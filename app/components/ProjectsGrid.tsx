"use client";
import { AnimatedCard, HeroOffset } from "./ProjectCard/AnimatedCard";
import phoneSwapZone from "@/app/images/phoneswapzone.png";
import travelAi from "@/app/images/travel.png";
import shineMen from "@/app/images/shinemen.png";
import landingPage from "@/app/images/saas.png";

import clsx from "clsx";
import { useOffset } from "../hooks/useOffset";
import { useIsMobile } from "../hooks/useMediaQuery";
import { useRef, useEffect } from "react";
import { useScroll, useSpring } from "motion/react";
import { useUI } from "@react-zero-ui/core";
import { externalLinks } from "@/config/siteConfig";

// Update the ids array to match the actual grid IDs being used
const ids = ["phoneSwapZone", "shineMen", "travelAi", "iron-and-oak"];

export function ProjectsGrid({ className }: { className?: string }) {
  const ref = useRef<HTMLDivElement>(null);
  const rawOffsets = useOffset(ids);
  const isMobile = useIsMobile();
  const isSmallScreen = useIsMobile(576);
  const responsiveScale = isMobile ? 0.34 : 0.8;
  const [, setReveal] = useUI<"true" | "false">("reveal", "false");

  const { scrollYProgress } = useScroll({
    offset: isMobile
      ? ["start start", "10% start"]
      : ["start start", "15% start"],
  });
  const stiffness = isMobile ? 120 : 220;
  const damping = isMobile ? 50 : 90;

  const progress = useSpring(scrollYProgress, { stiffness, damping });

  const OFFSET_TUNING: Record<string, Partial<HeroOffset>> = {
    // Add tuning for phoneSwapZone and shineMen
    phoneSwapZone: {
      rot: 3,
      s: responsiveScale,
      dx: isMobile ? -220 : -30,
      dy: isMobile ? -120 : -40,
    },
    shineMen: {
      rot: -8,
      s: responsiveScale,
      dx: isMobile ? -230 : -60,
      dy: isMobile ? -130 : -40,
    },
    travelAi: {
      rot: 5,
      s: responsiveScale,
      dx: isMobile ? -225 : -45,
      dy: isMobile ? -130 : -25,
    },
    "iron-and-oak": {
      rot: -5,
      s: responsiveScale,
      dx: isMobile ? -230 : -60,
      dy: isMobile ? -130 : -40,
    },
  };

  const offsets = Object.fromEntries(
    ids.map((id) => {
      const base = rawOffsets[id];
      const t = OFFSET_TUNING[id];

      // Add null check to prevent undefined errors
      if (!base || !t) {
        console.warn(`Missing offset data for ${id}`);
        return [id, { x: 0, y: 0, rot: 0, s: 1 }];
      }

      return [
        id,
        {
          x: (base.x || 0) + (t.dx || 0),
          y: (base.y || 0) + (t.dy || 0),
          rot: t.rot || 0,
          s: t.s ?? 1,
        },
      ];
    })
  );

  const triggerProgress = isMobile ? (isSmallScreen ? 0.15 : 0.2) : 0.5;
  useEffect(() => {
    const unsubscribe = progress.on("change", (latest) => {
      if (latest >= triggerProgress) {
        setReveal("true"); // Reveal ON
      } else {
        setReveal("false"); // Reveal OFF
      }
    });

    return unsubscribe;
  }, [progress, setReveal, triggerProgress]);

  return (
    <section
      id="projects-grid"
      className={clsx("relative scroll-mt-36", className)}
      ref={ref}
    >
      <div className="relative z-4 grid grid-cols-1 grid-rows-1 gap-4 md:grid-cols-2 md:grid-rows-2">
        <AnimatedCard
          key="travelAi"
          src={travelAi}
          alt={"Ziarah Travel Ai Preview"}
          offset={offsets["travelAi"]}
          gridId="travelAi"
          color="#DA961A"
          type="Ziarah Travel AI"
          progress={progress}
          href={externalLinks.travelAI}
          dataText="View Live Site"
        />
        <AnimatedCard
          key={"PhoneSwapZone"}
          src={phoneSwapZone}
          alt={"PhoneSwapZone - Preview"}
          offset={offsets["phoneSwapZone"]}
          gridId="phoneSwapZone"
          color="#3B06D1"
          type="Phone Resale Platform"
          progress={progress}
          href={externalLinks.phoneSwapZone}
          dataText="View Live Site"
        />
        <AnimatedCard
          key="shineMen"
          src={shineMen}
          alt={"Shine Men Preview"}
          offset={offsets["shineMen"]}
          gridId="shineMen"
          color="#024EFC"
          type="Men's Skin Care Website"
          progress={progress}
          href={externalLinks.shineMen}
          dataText="View Live Site"
        />

        <AnimatedCard
          key={"landingPage"}
          src={landingPage}
          alt={"Landing-Page Preview"}
          offset={offsets["iron-and-oak"]}
          gridId="iron-and-oak"
          color="#13739C"
          type="Landing Page"
          progress={progress}
          dataText="View Live Site"
          href={externalLinks.saasUi}
        />
      </div>
    </section>
  );
}
