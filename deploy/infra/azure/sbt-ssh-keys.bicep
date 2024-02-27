@description('SSH public key of the VM admin user')
param vmAllowedPublicKey string = 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCS8Jw5ZyQdIntBbNTChs39HdCd4WrrZpPW8cfIbbPM0wad+rtMxWi1st1rYtrZcNPV6EWJElOcKvms2oKmfuNUFvKDAhg2S7cFDwKH9J35Z6N0GkEbxELVDmWRJTJdy06sdj2CM8aIBhj+/An0v/cJog2hF6hSm3egVUUZWnwIhGk3vRRZsQh+jIMDNbYEbkJrnilcYmZ7KOBF90Ll8aGXgDXr4SBnM8wFkCndOU2wrsIUwW5ASBE9cpKinXf3kNlosrZFyaDkDIyWLT7e2GEXNR2UT0+GFSFTuktxF5cZPiLTuYO0Kxn3wRGYiCaOfLj1xk6mkepnePmJXVj59ynBdipd5dOLwQCm+Hd72owM65tRlOGuzssBNs8jFk4TGE0lkeIuKHrP+UdEZ69dDzTuYKkKkUI/1wtFBber7cCUwFj0qU6MDb9e5flDCzgZDYNfdWhuG+w8g0YeZF+LBI1vvLKeYJEVepAFkmLiTlqwSCNVDDjqW3IULzY1zPzxdiM= jignesh@MacBook-Pro-2.local'

@description('Location for all resources.')
param location string = resourceGroup().location

resource PublicKey 'Microsoft.Compute/sshPublicKeys@2023-03-01' = {
  name: 'sbt-public-key'
  location: location
  properties: {
    publicKey: vmAllowedPublicKey
  }
}
