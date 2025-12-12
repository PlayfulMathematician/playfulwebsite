passphrase -> derived key 
8 key slots:
slot 1 = Encrypt(derived key 1, master key)
slot 2 = Encrypt(derived key 2, master key)
slot 3 = Encrypt(derived key 3, master key)
slot 4 = Encrypt(derived key 4, master key)
...

for each key slot do:
potential master key = Decrypt(derived key, slot)
if the potential master key is the same as the real master key (hashing with salt?):
  you now have the master key 

master key to decrypt the drive.

i think it uses argon2id for luks 2 to get derived key.
