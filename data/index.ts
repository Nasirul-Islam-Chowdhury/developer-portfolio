export const navItems = [
  { name: "Home", link: "/" },
  { name: "About", link: "#about" },
  { name: "Projects", link: "#projects" },
  { name: "Testimonials", link: "#testimonials" },
  { name: "Contact", link: "#contact" },
];

export const gridItems = [
  {
    id: 1,
    title: "I prioritize client collaboration, fostering open communication ",
    description: "",
    className: "lg:col-span-3 md:col-span-6 md:row-span-4 lg:min-h-[60vh]",
    imgClassName: "w-full h-full",
    titleClassName: "justify-end",
    img: "/b1.svg",
    spareImg: "",
  },
  {
    id: 2,
    title: "I'm very flexible with time zone communications",
    description: "",
    className: "lg:col-span-2 md:col-span-3 md:row-span-2",
    imgClassName: "",
    titleClassName: "justify-start",
    img: "",
    spareImg: "",
  },
  {
    id: 3,
    title: "My tech stack",
    description: "I constantly try to improve",
    className: "lg:col-span-2 md:col-span-3 md:row-span-2",
    imgClassName: "",
    titleClassName: "justify-center",
    img: "",
    spareImg: "",
  },
  {
    id: 4,
    title: "Tech enthusiast with a passion for development.",
    description: "",
    className: "lg:col-span-2 md:col-span-3 md:row-span-1",
    imgClassName: "",
    titleClassName: "justify-start",
    img: "/grid.svg",
    spareImg: "/b4.svg",
  },

  {
    id: 5,
    title: "Currently building a Healthcare Application",
    description: "The Inside Scoop",
    className: "md:col-span-3 md:row-span-2",
    imgClassName: "absolute right-0 bottom-0 md:w-96 w-60",
    titleClassName: "justify-center md:justify-start lg:justify-center",
    img: "/b5.svg",
    spareImg: "/grid.svg",
  },
  {
    id: 6,
    title: "Do you want to start a project together?",
    description: "",
    className: "lg:col-span-2 md:col-span-3 md:row-span-1",
    imgClassName: "",
    titleClassName: "justify-center md:max-w-full max-w-60 text-center",
    img: "",
    spareImg: "",
  },
];

export const projects = [
  {
    id: 1,
    title: "PhoneSwapZone",
    des: "Grab the best deal on your old smartphone! Easy Payment System by Stripe",
    img: "https://i.ibb.co/C52k1RT/phoneswapzone-web-app-mobiles.png",
    iconLists: ["/re.svg", "/tail.svg", "/ts.svg"],
    link: "https://phoneswapzone.web.app",
  },
  {
    id: 2,
    title: "Shine Men",
    des: "skin Care for Men, we've got you covered. Men's skincare service refers to specialized treatments and services tailored specifically to address the skincare needs and concerns of men.",
    img: "./shine-men.png",
    iconLists: ["/next.svg", "/tail.svg", "/ts.svg"],
    link: "https://men-s-skin-care.web.app",
  },
  {
    id: 3,
    title: "Yoom",
    des: "Simplify your video conferencing experience with Yoom. Seamlessly connect with colleagues and friends.",
    img: "/p2.svg",
    iconLists: ["/re.svg", "/tail.svg", "/ts.svg"],
    link: "https://zoom-clone-neon.vercel.app/",
  },
  {
    id: 4,
    title: "Ai Saas Landing Page",
    des: "Sales Associate KoWorkers are your digital teammates, enhancing your business operation with-round-the-clock support and efficiency",
    img: "/saas.png",
    iconLists: ["/next.svg", "/tail.svg", "/ts.svg"],
    link: "https://koworker-landing.vercel.app/",
  },
];

export const testimonials = [
  {
    quote:
      "Nasirul is an exceptional developer. He delivered what I wanted and always does it on time. He has great work ethics and professionalism. He helped me with developing both backend and frontend with next js and node js for a social media platform with advanced database design and clean code. The work was done in a very short amount of time and exceeded all my expectations with pixel perfect design! I am impressed with the quality of the work! Everything was done exactly as I wanted in every small detail. I would certainly recommend him for any web development needs. Thank you Nasirul!",
    name: "Foujia Jamal",
    title: "Fiverr Client",
  },
  {
    quote:
      "I'm happy to report that, despite my initial nervousness, I successfully placed my first Fiverr order with Nasirul. He was very understanding of my design and specifications, and he took the time to answer all of my queries. Nasirul used Node.js and Next.js to create an incredible, fully responsive CRM Admin Panel that flawlessly manages sales pipelines, customer data, and interactions. He fulfilled all of my requests and attended to all of my demands. I’m quite pleased with the outcome and look forward to collaborating with him on future projects. Highly recommended! Thanks Nasirul ",
    name: "Nick_Moutafis",
    title: "Director of AlphaStream Technologies",
  },
  {
    quote:
      "He is Very hard working and timely. you are a very good team player with outstanding logical thinking. I am impressed with the quality of the work! Everything was done exactly as I wanted in every small detail. I would certainly recommend him for any web development needs. I’m quite pleased with the outcome and look forward to collaborating with him on future projects",
    name: "Nahid",
    title: "",
  },
];

export const companies = [
  {
    id: 1,
    name: "cloudinary",
    img: "/cloud.svg",
    nameImg: "/cloudName.svg",
  },
  {
    id: 2,
    name: "appwrite",
    img: "/app.svg",
    nameImg: "/appName.svg",
  },
  {
    id: 3,
    name: "HOSTINGER",
    img: "/host.svg",
    nameImg: "/hostName.svg",
  },
  {
    id: 4,
    name: "stream",
    img: "/s.svg",
    nameImg: "/streamName.svg",
  },
  {
    id: 5,
    name: "docker.",
    img: "/dock.svg",
    nameImg: "/dockerName.svg",
  },
];

export const workExperience = [
  {
    id: 1,
    title: "Frontend Engineer Intern (Zecho)",
    desc: "Assisted in the development of a web-based platform using React.js, enhancing interactivity.",
    className: "md:col-span-2",
    thumbnail: "/exp1.svg",
  },
  {
    id: 2,
    title: "Full Stack Engineer (KoWorkerAi)",
    desc: "Developed Full Stack web app for a video ai saas with next js and node js",
    className: "md:col-span-2", // change to md:col-span-2
    thumbnail: "/exp2.svg",
  },
  {
    id: 3,
    title: "Freelance Web Dev Project",
    desc: "Worker with many international clients on frontend and backend with mern technologies",
    className: "md:col-span-2", // change to md:col-span-2
    thumbnail: "/exp3.svg",
  },
];

export const socialMedia = [
  {
    id: 1,
    img: "/git.svg",
    link: "https://github.com/Nasirul-Islam-Chowdhury",
  },
  {
    id: 2,
    img: "/twit.svg",
    link: "https://x.com/Nasir143",
  },
  {
    id: 3,
    img: "/link.svg",
    link: "https://www.linkedin.com/in/nasir252/",
  },
];
