import Image from "next/image";
import clsx from "clsx";
import profilePhoto from "@/public/profile.jpg";
import { Text, Typography } from "../ui/Elements";
import { AnimatedH2 } from "./ui/AnimatedH2";
import { ImageReveal } from "./ImageReveal";
import { MotionDiv } from "../utils/lazy-ui";

export const AboutSectionV2 = ({ className = "" }: { className?: string }) => {
  return (
    <section
      id="about"
      className={clsx("border-y border-gray-200 bg-white", className)}
    >
      <div className="inside-container relative z-2">
        {/* HEADLINE */}
        <AnimatedH2>
          <span className="text-slate-500">About</span>
          <br />
          Nasir Chowdhury
        </AnimatedH2>
        <div className="flex flex-col-reverse gap-12 md:flex-row md:gap-16">
          {/* ---------------- left column ---------------- */}

          <div className="flex [flex:1_0_0px] flex-col gap-6">
            {/* portrait + overlay icons */}

            <ImageReveal
              src={profilePhoto}
              alt="Md Nasirul Islam Chowdhury"
              className="custom-shadow aspect-[4/4.5]"
            />

            {/* name + role */}
            <MotionDiv
              initial={{ opacity: 0, filter: "blur(10px)" }}
              whileInView={{ opacity: 1, filter: "blur(0px)" }}
              viewport={{ once: true, margin: "0px 0px -100px 0px" }}
            >
              <Text as="h2" size="lg" className="font-medium">
                Md Nasirul Islam Chowdhury
              </Text>
              <p className="text-sm text-gray-500">
                Full-Stack Engineer (Next.js + TypeScript)
              </p>
            </MotionDiv>
          </div>
          {/* ---------------- right column ---------------- */}
          <Typography
            as="article"
            size="lg"
            className="[flex:1.5_0_0px] space-y-8 text-slate-500"
          >
            <p>


              <strong className="font-semibold text-slate-900">
                I build
                reliable, scalable production systems
              </strong>{" "}



              and craft custom solutions when off-the-shelf tools fall short. My focus is on performance, clean architecture, and shipping products that last in the real world.
            </p>

            <p>
              <strong className="font-semibold text-slate-900">
                I ship v1s in weeks and iterate in days
              </strong>
              . Leveraging tools server-first React, typed APIs, background
              jobs and observability. Small PRs, rapid feedback, no
              ceremony.
            </p>
            <p>
              <strong className="font-semibold text-slate-900">
                My core philosophy is simplicity
              </strong>
              . if complexity balloons, I delete it and design the simpler path.
            </p>
          </Typography>
        </div>
      </div>
    </section>
  );
};
