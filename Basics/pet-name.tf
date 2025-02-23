resource "local_file" "my-pet" {
            content = "My pet is called finnegan!!"
            filename = "/root/pet-name"
}


resource "random_pet" "other-pet" {
              prefix = "Mr"
              separator = "."
              length = "1"
}