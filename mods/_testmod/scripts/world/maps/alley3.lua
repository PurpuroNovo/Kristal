return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.8.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 27,
  height = 14,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 5,
  nextobjectid = 14,
  properties = {},
  tilesets = {
    {
      name = "alley_animated",
      firstgid = 1,
      filename = "../tilesets/alley_animated.tsx"
    },
    {
      name = "alley",
      firstgid = 37,
      filename = "../tilesets/alley.tsx"
    },
    {
      name = "city_alley",
      firstgid = 398,
      filename = "../tilesets/city_alley.tsx"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 27,
      height = 14,
      id = 1,
      name = "Tile Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        296, 296, 296, 296, 296, 296, 296, 297, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 295, 296,
        296, 296, 296, 296, 296, 296, 296, 297, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 295, 296,
        296, 296, 296, 296, 296, 296, 296, 297, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 295, 296,
        326, 326, 326, 326, 326, 326, 326, 327, 341, 341, 341, 341, 341, 341, 341, 341, 341, 341, 341, 341, 341, 341, 341, 341, 341, 295, 296,
        326, 326, 326, 326, 326, 326, 326, 327, 446, 446, 446, 446, 446, 446, 446, 446, 446, 446, 446, 446, 446, 446, 446, 446, 447, 295, 296,
        341, 341, 341, 341, 341, 341, 341, 342, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 458, 295, 296,
        450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 458, 295, 296,
        450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 458, 295, 296,
        281, 281, 281, 281, 281, 281, 281, 282, 468, 481, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 458, 295, 296,
        296, 296, 296, 296, 296, 296, 296, 297, 122, 456, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 458, 295, 296,
        296, 296, 296, 296, 296, 296, 296, 297, 122, 456, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 458, 295, 296,
        296, 296, 296, 296, 296, 296, 296, 297, 122, 456, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 458, 295, 296,
        296, 296, 296, 296, 296, 296, 296, 297, 281, 281, 281, 281, 281, 281, 281, 281, 281, 281, 281, 281, 281, 281, 281, 281, 281, 295, 296,
        296, 296, 296, 296, 296, 296, 296, 297, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 296, 295, 296
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "collision",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 200,
          width = 320,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 120,
          width = 680,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1000,
          y = 160,
          width = 40,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 480,
          width = 680,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 320,
          width = 320,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 360,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "testing.image"
          }
        },
        {
          id = 4,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 240,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "alley2",
            ["marker"] = "entry_right"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "markers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 2,
          name = "entry_left",
          type = "",
          shape = "point",
          x = 40,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "spawn",
          type = "",
          shape = "point",
          x = 360,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}