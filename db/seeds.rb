# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lesson.destroy_all
Lesson.create(
  [
    {
      thumbnail: nil,
      name: 'Aula 1 - Liberada',
      description: 'Recriando o P***hub do zero com pré processamento de vídeos',
      video_url: 'https://youtube.com/'
    },
    {
      thumbnail: nil,
      name: 'Aula 2 - Liberada',
      description: 'Até 10x Mais Performance: Processando vídeos na GPU do cliente pelo navegador',
      video_url: 'https://youtube.com/'
    },
    {
      thumbnail: nil,
      name: 'Aula 3 - Liberada',
      description: 'Revelando o Roadmap para se tornar DEV especialisa',
      video_url: 'https://youtube.com/'
    }
  ]
)