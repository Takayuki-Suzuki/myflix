# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
comedies = Category.create(name: "Comedies")
dorama = Category.create(name: "Dorama")
Video.create(
    title: "Futurama",
    description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.",
    cover_image_url: "/tmp/futurama.jpg",
    large_image_url: "/tmp/futurama.jpg",
    video_url: "",
    rating: 4.5,
    category_id: comedies.id
)
Video.create(
    title: "South Park",
    description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.",
    cover_image_url: "/tmp/south_park.jpg",
    large_image_url: "/tmp/south_park.jpg",
    video_url: "",
    rating: 4,
    category_id: comedies.id
)
Video.create(
    title: "Futurama",
    description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.",
    cover_image_url: "/tmp/futurama.jpg",
    large_image_url: "/tmp/futurama.jpg",
    video_url: "",
    rating: 4.5,
    category_id: comedies.id
)
Video.create(
    title: "South Park",
    description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.",
    cover_image_url: "/tmp/south_park.jpg",
    large_image_url: "/tmp/south_park.jpg",
    video_url: "",
    rating: 4,
    category_id: comedies.id
)
Video.create(
    title: "Futurama",
    description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.",
    cover_image_url: "/tmp/futurama.jpg",
    large_image_url: "/tmp/futurama.jpg",
    video_url: "",
    rating: 4.5,
    category_id: comedies.id
)
Video.create(
    title: "South Park",
    description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.",
    cover_image_url: "/tmp/south_park.jpg",
    large_image_url: "/tmp/south_park.jpg",
    video_url: "",
    rating: 4,
    category_id: comedies.id
)
Video.create(
    title: "Futurama",
    description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.",
    cover_image_url: "/tmp/futurama.jpg",
    large_image_url: "/tmp/futurama.jpg",
    video_url: "",
    rating: 4.5,
    category_id: comedies.id
)
Video.create(
    title: "South Park",
    description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.",
    cover_image_url: "/tmp/south_park.jpg",
    large_image_url: "/tmp/south_park.jpg",
    video_url: "",
    rating: 4,
    category_id: comedies.id
)
Video.create(
    title: "Monk",
    description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.",
    cover_image_url: "/tmp/monk.jpg",
    large_image_url: "/tmp/monk_large.jpg",
    video_url: "",
    rating: 4,
    category_id: dorama.id
)
Video.create(
    title: "Monk",
    description: "Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.",
    cover_image_url: "/tmp/monk.jpg",
    large_image_url: "/tmp/monk_large.jpg",
    video_url: "",
    rating: 4,
    category_id: dorama.id
)