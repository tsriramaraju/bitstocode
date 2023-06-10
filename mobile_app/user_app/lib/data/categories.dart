import 'package:user_app/constants/illustrations.dart';
import 'package:user_app/models/category.dart';

final List<Category> categories = [
  const Category(
    name: "Software Development",
    illustration: KSoftwareDevelopment,
    description: "Involves creating computer programs and applications.",
    bigDescription:
        "Software development includes creating, coding, designing, testing, debugging, and maintaining the source code of computer programs. This field can cover everything from the simplest static single page of plain text to the most complex web-based internet applications, electronic business applications, and social network services.",
    roles: [
      Role(
        name: "Full Stack Developer",
        illustration: KUIUX,
        smallDescription:
            "Works on both front-end and back-end of applications.",
        avgSalary: "₹600,000 - ₹1,200,000",
        description:
            "Full Stack Developers are proficient in both front-end and back-end coding. Their primary responsibilities include designing user interactions on websites, developing servers and databases for website functionality and coding for mobile platforms.",
        recommendedExperienceLevel: ExperienceLevel.Intermediate,
        techSkills: [
          "JavaScript",
          "HTML/CSS",
          "APIs",
          "Version Control/Git",
          "Python/Java/C#"
        ],
      ),
      Role(
        name: "Backend Developer",
        illustration: KUIUX,
        smallDescription:
            "Focuses on servers, databases, and application logic.",
        avgSalary: "₹500,000 - ₹1,000,000",
        description:
            "Backend Developers work on server-side web application logic. They usually write web services and APIs used by front-end developers and mobile application developers. Their role includes understanding the goals of the website and coming up with effective solutions.",
        recommendedExperienceLevel: ExperienceLevel.Intermediate,
        techSkills: ["Java", "Python", "Ruby", "SQL", "APIs"],
      ),
      Role(
        name: "Frontend Developer",
        illustration: KUIUX,
        smallDescription: "Works on the user-facing part of websites.",
        avgSalary: "₹400,000 - ₹800,000",
        description:
            "Frontend Developers implement web designs through programming languages like HTML, CSS, and JavaScript. They work on all visual aspects of a website, including the layout, user interface, graphics, and navigation.",
        recommendedExperienceLevel: ExperienceLevel.Beginner,
        techSkills: [
          "HTML/CSS",
          "JavaScript",
          "jQuery",
          "React",
          "Version Control/Git"
        ],
      ),
    ],
  ),
  const Category(
    name: "Mobile Development",
    illustration: KMobileDevelopment,
    description: "Specializes in building software for mobile devices.",
    bigDescription:
        "Mobile development involves creating installable software bundles (code, binaries, assets, etc.) implementing backend services such as data access with an API, and testing application on target devices. There are two dominant platforms in the modern smartphone market. One is the Android platform from Google and the other is the iOS platform from Apple.",
    roles: [
      Role(
        name: "iOS Developer",
        illustration: KUIUX,
        smallDescription: "Develops applications for Apple devices.",
        avgSalary: "₹500,000 - ₹1,500,000",
        description:
            "iOS developers design and build applications for mobile devices running Apple’s iOS operating software. They are responsible for designing and coding the base application, ensuring the quality of the application, fixing application bugs, maintaining the code, and implementing application updates.",
        recommendedExperienceLevel: ExperienceLevel.Intermediate,
        techSkills: [
          "Swift",
          "Objective-C",
          "Xcode",
          "Cocoa Touch",
          "UI/UX design"
        ],
      ),
      Role(
        name: "Android Developer",
        illustration: KUIUX,
        smallDescription: "Develops applications for Android devices.",
        avgSalary: "₹400,000 - ₹1,300,000",
        description:
            "Android developers design and build applications for Android devices. The role includes designing and building advanced applications for the Android platform, collaborating with cross-functional teams to define, design, and ship new features, and working with outside data sources and APIs.",
        recommendedExperienceLevel: ExperienceLevel.Intermediate,
        techSkills: ["Kotlin", "Java", "Android SDK", "Android Studio", "APIs"],
      ),
    ],
  ),
  const Category(
    name: "Data Science",
    illustration: KDataScience,
    description: "Involves processing and analyzing large data sets.",
    bigDescription:
        "Data Science is a multidisciplinary blend of data inference, algorithm development, and technology in order to solve analytically complex problems. Data science is a concept to unify statistics, data analysis, machine learning, and their related methods in order to understand and analyze actual phenomena with data.",
    roles: [
      Role(
        name: "Data Scientist",
        illustration: KUIUX,
        smallDescription:
            "Uses scientific methods to extract insights from data.",
        avgSalary: "₹700,000 - ₹1,500,000",
        description:
            "Data scientists are analytical experts who utilize their skills in both technology and social science to find trends and manage data. They use industry knowledge, contextual understanding, skepticism of existing assumptions, to uncover solutions to business challenges.",
        recommendedExperienceLevel: ExperienceLevel.Advanced,
        techSkills: [
          "Python",
          "R",
          "SQL",
          "Machine Learning",
          "Statistical Analysis"
        ],
      ),
      Role(
        name: "Data Analyst",
        illustration: KUIUX,
        smallDescription: "Interprets data to help companies make decisions.",
        avgSalary: "₹500,000 - ₹900,000",
        description:
            "Data analysts collect, process and perform statistical analyses of data. They transform the data into useful information that helps organizations to make better decisions. They might develop and implement data analyses, data collection systems, and other strategies that optimize statistical efficiency and quality.",
        recommendedExperienceLevel: ExperienceLevel.Beginner,
        techSkills: [
          "Excel",
          "Python/R",
          "SQL",
          "Data Visualization",
          "Statistics"
        ],
      ),
      Role(
        name: "Data Engineer",
        illustration: KUIUX,
        smallDescription: "Prepares and optimizes data infrastructure.",
        avgSalary: "₹700,000 - ₹1,400,000",
        description:
            "Data engineers develop, construct, test, and maintain architectures, such as databases and large-scale processing systems. They ensure that the architecture that data scientists need in order to conduct their analyses is performing smoothly. They might also work on the collection and storage of data.",
        recommendedExperienceLevel: ExperienceLevel.Intermediate,
        techSkills: [
          "SQL",
          "Python",
          "Hadoop",
          "Data Warehousing",
          "ETL Tools"
        ],
      ),
    ],
  ),
  const Category(
    name: "Cloud Computing",
    illustration: KCloudComputing,
    description: "Involves delivering computing services over the internet.",
    bigDescription:
        "Cloud computing is the on-demand availability of computer system resources, especially data storage and computing power, without direct active management by the user. The term is generally used to describe data centers available to many users over the Internet.",
    roles: [
      Role(
        name: "Cloud Architect",
        illustration: KUIUX,
        smallDescription: "Designs and manages cloud computing strategy.",
        avgSalary: "₹1,000,000 - ₹2,000,000",
        description:
            "Cloud Architects are responsible for managing the cloud computing architecture in an organization, especially as cloud technologies grow increasingly complex. They plan, design, and coordinate the implementation of cloud-based initiatives to ensure that the proper architecture is in place.",
        recommendedExperienceLevel: ExperienceLevel.Expert,
        techSkills: [
          "AWS/Azure/GCP",
          "Cloud Security",
          "DevOps",
          "Python/Java",
          "Data Storage Technologies"
        ],
      ),
      Role(
        name: "Cloud Engineer",
        illustration: KUIUX,
        smallDescription: "Builds and maintains cloud services.",
        avgSalary: "₹700,000 - ₹1,500,000",
        description:
            "Cloud Engineers are responsible for managing an organization's cloud-based systems and processes. This includes setting up architectures using cloud providers, overseeing cloud application design, and deploying and monitoring cloud systems.",
        recommendedExperienceLevel: ExperienceLevel.Advanced,
        techSkills: [
          "AWS/Azure/GCP",
          "Python/Java",
          "Networking",
          "Security",
          "DevOps"
        ],
      ),
      Role(
        name: "DevOps Engineer",
        illustration: KUIUX,
        smallDescription: "Works on system operations and development.",
        avgSalary: "₹600,000 - ₹1,400,000",
        description:
            "DevOps Engineers work with developers and the IT staff to oversee the code releases. They are either developers who get interested in deployment and network operations, or sysadmins who have a passion for scripting and coding, and move into the development side where they can improve the planning of test and deployment.",
        recommendedExperienceLevel: ExperienceLevel.Advanced,
        techSkills: [
          "AWS/Azure/GCP",
          "Python/Bash",
          "CI/CD",
          "Docker/Kubernetes",
          "Infrastructure as Code"
        ],
      ),
    ],
  ),
  const Category(
    name: "UI/UX Design",
    illustration: KUIUX,
    description: "Involves designing user-friendly interfaces and experiences.",
    bigDescription:
        "UI/UX Design is the process of manipulating user behavior through usability, usefulness, and desirability provided in the interaction with a product. UI design focuses on the user's visual experience while UX Design encompasses the entire journey and process of obtaining, owning, and troubleshooting a product or service.",
    roles: [
      Role(
        name: "UI Designer",
        illustration: KUIUX,
        smallDescription: "Focuses on the visual aspects of a user interface.",
        avgSalary: "₹400,000 - ₹800,000",
        description:
            "UI Designers are in charge of designing each screen or page with which a user interacts and ensuring that the UI visually communicates the path that a UX designer has laid out. They are responsible for creating a cohesive style guide and ensuring that a consistent design language is applied across the product.",
        recommendedExperienceLevel: ExperienceLevel.Beginner,
        techSkills: [
          "Graphic Design",
          "UI Design",
          "CSS",
          "HTML",
          "Adobe Creative Suite"
        ],
      ),
      Role(
        name: "UX Designer",
        illustration: KUIUX,
        smallDescription: "Focuses on enhancing user satisfaction.",
        avgSalary: "₹500,000 - ₹1,000,000",
        description:
            "UX Designers measure and optimise applications (usually web based) to improve ease of use (usability), and create the best user experience by exploring many different approaches to solve end-users’ problems. They make technology easy and enjoyable to use.",
        recommendedExperienceLevel: ExperienceLevel.Beginner,
        techSkills: [
          "Wireframing",
          "Prototyping",
          "User Research",
          "Interactivity and Animation",
          "Design Software"
        ],
      ),
    ],
  ),
  const Category(
    name: "Security",
    illustration: KCyberSecurity,
    description: "Involves protecting information systems and data.",
    bigDescription:
        "The field of cybersecurity is concerned with protecting internet-connected systems, including hardware, software, and data, from cyber threats. Professionals in this industry safeguard information systems from data breaches and attacks.",
    roles: [
      Role(
        name: "Cybersecurity Analyst",
        illustration: "https://link-to-cybersecurity-analyst-image.com",
        smallDescription: "Protects systems against unauthorized access.",
        avgSalary: "₹500,000 - ₹1,000,000",
        description:
            "Cybersecurity Analysts plan and carry out security measures to protect an organization's computer networks and systems. They keep constant tabs on threats and monitor their organization’s networks for any breaches in security.",
        recommendedExperienceLevel: ExperienceLevel.Beginner,
        techSkills: [
          "Security Information and Event Management (SIEM)",
          "Firewalls/IDS/IPS",
          "Risk Assessment",
          "Incident Response",
          "Secure Software Development"
        ],
      ),
      Role(
        name: "Security Architect",
        illustration: "https://link-to-security-architect-image.com",
        smallDescription: "Designs network and computer security architecture.",
        avgSalary: "₹1,200,000 - ₹2,000,000",
        description:
            "Security Architects design systems that prevent unauthorized access to digital files and network structures. They create the plan for system security structure and incorporate software for data encryption and firewalls.",
        recommendedExperienceLevel: ExperienceLevel.Expert,
        techSkills: [
          "Security Information and Event Management (SIEM)",
          "Firewalls/IDS/IPS",
          "Cryptography",
          "Secure Software Development",
          "Cloud Security"
        ],
      ),
    ],
  ),
  const Category(
    name: "Quality Assurance",
    illustration: KQualityAssurance,
    description: "Involves ensuring the software meets specified requirements.",
    bigDescription:
        "Quality Assurance (QA) in software development is the continuous monitoring of the software engineering processes and methods used to ensure quality. It aims at improving the processes to deliver quality products to the customers.",
    roles: [
      Role(
        name: "QA Analyst",
        illustration: "https://link-to-qa-analyst-image.com",
        smallDescription:
            "Tests systems to ensure they meet company and client standards.",
        avgSalary: "₹300,000 - ₹700,000",
        description:
            "QA Analysts run tests on new or existing software applications to ensure they are free of defects and meet end-user requirements. They identify issues and work with the software development team to troubleshoot and resolve them.",
        recommendedExperienceLevel: ExperienceLevel.Beginner,
        techSkills: [
          "Test Automation",
          "Manual Testing",
          "Defect Tracking",
          "Test Cases",
          "Performance Testing"
        ],
      ),
      Role(
        name: "QA Engineer",
        illustration: "https://link-to-qa-engineer-image.com",
        smallDescription: "Designs and implements testing plans for software.",
        avgSalary: "₹600,000 - ₹1,200,000",
        description:
            "QA Engineers design and implement tests, debug and define corrective actions, review system requirements and track quality assurance metrics. They also liaise with internal teams (e.g. developers and product managers) to identify system requirements.",
        recommendedExperienceLevel: ExperienceLevel.Intermediate,
        techSkills: [
          "Test Automation",
          "Manual Testing",
          "CI/CD",
          "Agile Methodologies",
          "Performance Testing"
        ],
      ),
    ],
  ),
];
