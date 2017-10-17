Level.create!([
  {name: "Nível Fundamental"},
  {name: "Nível Médio"}
])
Matter.create!([
  {name: "Português"},
  {name: "Matemática"},
  {name: "Informática"},
  {name: "Geografia"},
  {name: "História"},
  {name: "Conhecimentos Básicos"}
])
Level::HABTM_Matters.create!([
  {level_id: 1, matter_id: 6},
  {level_id: 1, matter_id: 5},
  {level_id: 1, matter_id: 4},
  {level_id: 1, matter_id: 3},
  {level_id: 1, matter_id: 2},
  {level_id: 1, matter_id: 1},
  {level_id: 2, matter_id: 6},
  {level_id: 2, matter_id: 5},
  {level_id: 2, matter_id: 4},
  {level_id: 2, matter_id: 3},
  {level_id: 2, matter_id: 2},
  {level_id: 2, matter_id: 1}
])