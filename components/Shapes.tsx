import { useSpring, useTransform, MotionValue } from "framer-motion";
import { motion } from "framer-motion-3d";
import { MotionConfig } from "framer-motion";
import { useRef, useLayoutEffect, MutableRefObject } from "react";

import { Canvas, useThree } from "@react-three/fiber";
import { GroupProps, MeshProps } from "@react-three/fiber";
import { PerspectiveCamera as ThreePerspectiveCamera } from "three";

const transition = {
  type: "spring",
  duration: 0.7,
  bounce: 0.2,
};

export function useSmoothTransform<T, U>(
  value: MotionValue<T>,
  springOptions: Parameters<typeof useSpring>[1],
  transformer: (v: T) => U
): MotionValue<U> {
  return useSpring(useTransform(value, transformer), springOptions);
}

type ShapesProps = {
  isHover: boolean;
  isPress: boolean;
  mouseX: MotionValue<number>;
  mouseY: MotionValue<number>;
};

export function Shapes({ isHover, isPress, mouseX, mouseY }: ShapesProps) {
  const lightRotateX = useSmoothTransform(mouseY, spring, mouseToLightRotation);
  const lightRotateY = useSmoothTransform(mouseX, spring, mouseToLightRotation);

  return (
    <Canvas shadows dpr={[1, 2]} resize={{ scroll: false, offsetSize: true }}>
      <Camera mouseX={mouseX} mouseY={mouseY} />
      <MotionConfig transition={transition}>
        <motion.group
          // @ts-expect-error: center prop is not standard, but used in this context
          center={[0, 0, 0]}
          rotation={[
            lightRotateX as unknown as number,
            lightRotateY as unknown as number,
            0,
          ]}
        >
          <Lights />
        </motion.group>
        <motion.group
          // @ts-expect-error: initial, dispose, variants are not standard props for group, but used by framer-motion-3d
          initial={false}
          animate={isHover ? "hover" : "rest"}
          dispose={null}
          variants={{
            hover: { z: isPress ? -0.9 : 0 },
          }}
        >
          <Sphere />
          <Cone />
          <Torus />
          <Icosahedron />
        </motion.group>
      </MotionConfig>
    </Canvas>
  );
}

export function Lights() {
  return (
    <>
      <spotLight color="#61dafb" position={[-10, -10, -10]} intensity={0.2} />
      <spotLight color="#61dafb" position={[-10, 0, 15]} intensity={0.8} />
      <spotLight color="#61dafb" position={[-5, 20, 2]} intensity={0.5} />
      <spotLight color="#f2056f" position={[15, 10, -2]} intensity={2} />
      <spotLight color="#f2056f" position={[15, 10, 5]} intensity={1} />
      <spotLight color="#b107db" position={[5, -10, 5]} intensity={0.8} />
    </>
  );
}

export function Sphere() {
  return (
    <motion.mesh
      position={[-0.5, -0.5, 0]}
      // @ts-expect-error: variants is not a standard prop for mesh, but used by framer-motion-3d
      variants={{ hover: { z: 2 } }}
    >
      <sphereGeometry args={[0.4]} />
      <Material />
    </motion.mesh>
  );
}

export function Cone() {
  return (
    <motion.mesh
      position={[-0.8, 0.4, 0]}
      rotation={[-0.5, 0, -0.3]}
      // @ts-expect-error: variants is not a standard prop for mesh, but used by framer-motion-3d
      variants={{
        hover: {
          z: 1.1,
          x: -1.5,
          rotateX: -0.2,
          rotateZ: 0.4,
        },
      }}
    >
      <coneGeometry args={[0.3, 0.6, 20]} />
      <Material />
    </motion.mesh>
  );
}

export function Torus() {
  return (
    <motion.mesh
      position={[0.1, 0.4, 0]}
      rotation={[-0.5, 0.5, 0]}
      // @ts-expect-error: variants is not a standard prop for mesh, but used by framer-motion-3d
      variants={{
        hover: {
          y: 0.5,
          z: 2,
          rotateY: -0.2,
        },
      }}
    >
      <torusGeometry args={[0.2, 0.1, 10, 50]} />
      <Material />
    </motion.mesh>
  );
}

export function Icosahedron() {
  return (
    <motion.mesh
      position={[1.1, 0, 0]}
      rotation={[0, 0, 0.5]}
      // @ts-expect-error: variants is not a standard prop for mesh, but used by framer-motion-3d
      variants={{
        hover: {
          x: 1.8,
          z: 0.6,
          y: 0.6,
          rotateZ: -0.5,
        },
      }}
    >
      <icosahedronGeometry args={[0.7, 0]} />
      <Material />
    </motion.mesh>
  );
}

export function Material() {
  return <meshPhongMaterial color="#fff" specular="#61dafb" shininess={10} />;
}

// Adapted from https://github.com/pmndrs/drei/blob/master/src/core/PerspectiveCamera.tsx
type CameraProps = {
  mouseX: MotionValue<number>;
  mouseY: MotionValue<number>;
  [key: string]: any;
};

function Camera({ mouseX, mouseY, ...props }: CameraProps) {
  const cameraX = useSmoothTransform(mouseX, spring, (x: number) => x / 350);
  const cameraY = useSmoothTransform(
    mouseY,
    spring,
    (y: number) => (-1 * y) / 350
  );

  const set = useThree(({ set }) => set);
  const camera = useThree(({ camera }) => camera as ThreePerspectiveCamera);
  const size = useThree(({ size }) => size);
  const scene = useThree(({ scene }) => scene);
  const cameraRef = useRef<ThreePerspectiveCamera>(null);

  useLayoutEffect(() => {
    const cam = cameraRef.current;
    if (cam) {
      cam.aspect = size.width / size.height;
      cam.updateProjectionMatrix();
    }
  }, [size, props]);

  useLayoutEffect(() => {
    if (cameraRef.current) {
      const oldCam = camera;
      set((state: any) => ({ ...state, camera: cameraRef.current }));
      return () => set((state: any) => ({ ...state, camera: oldCam }));
    }
  }, [camera, cameraRef, set]);

  useLayoutEffect(() => {
    return cameraX.on("change", () => {
      camera.lookAt(scene.position);
    });
  }, [cameraX, camera, scene]);

  return (
    <motion.perspectiveCamera
      ref={cameraRef as MutableRefObject<any>}
      fov={90}
      position={[
        cameraX as unknown as number,
        cameraY as unknown as number,
        3.8,
      ]}
      {...props}
    />
  );
}

const spring = { stiffness: 600, damping: 30 };

const mouseToLightRotation = (v: number) => (-1 * v) / 140;
