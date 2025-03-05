// I intentionally didn't create a separate JS file for the accordion logic. Outside of a learning context, I would have used an existing accordion, such as from the Bootstrap library. Also, I wasn't sure exactly what you would prefer as a solution, so I opted for vanilla JS, as it seemed like the most neutral choice. If needed, I can write the accordion using jQuery or TypeScript.

// Accordion logic
document.addEventListener('DOMContentLoaded', () => {
    const accordionHeaders = document.querySelectorAll('[data-toggle="accordion"]');

    accordionHeaders.forEach(header => {
        header.addEventListener('click', () => {
            const targetContentId = header.getAttribute('data-target');
            const targetContent = document.getElementById(targetContentId);

            accordionHeaders.forEach(header => {
                header.classList.remove('accordion__header--active');
            });

            header.classList.add('accordion__header--active');

            const allContents = document.querySelectorAll('.accordion__content');
            allContents.forEach(content => {
                content.classList.remove('accordion__content--active');
            });

            targetContent.classList.add('accordion__content--active');
        });
    });
});

// I added this script to render animation only when elements at least 10% visible in viewport.

// Animations logic
document.addEventListener("DOMContentLoaded", function () {
    const elements = document.querySelectorAll(
      ".fade-in-element, .zoom-in-element, .scroll-in-left-element, .scroll-in-right-element"
    );
  
    const observer = new IntersectionObserver(
      (entries, observer) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            entry.target.classList.add("visible");
            observer.unobserve(entry.target); // Stop observing once the animation is triggered
          }
        });
      },
      {
        threshold: 0.1, // Element needs to be at least 10% visible
      }
    );
  
    elements.forEach(element => {
      observer.observe(element);
    });
  });
  