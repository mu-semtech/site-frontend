export default {
  version: "0.1",
  menus: [
    { name: "images",
      items: [
        { name: "Parallax",
          component: "cards/parallax-image" },
        { name: "Code block",
          component: "cards/code-block" },
      ]
    }, {
      name: "Content",
      items: [
        { name: "Code block",
          component: "cards/code-block" },
        { name: "Stars",
          component: "cards/star-rating" }
      ]
    }
  ],
};
