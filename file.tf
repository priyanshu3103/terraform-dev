resource "local_file" "copy_file" {
  content  = "This is a copied file."
  filename = "copied_file.txt"
}