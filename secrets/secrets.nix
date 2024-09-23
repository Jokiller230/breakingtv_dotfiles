let
   userKeys = [
    # Tower
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9YHP29s7FhcVMKPyV21FudWkECLXTY+XJnZZAQY9b3wsojWAf/3N91rraQtvPWFAEibR8DmupHZ6LhSIl0Bvm5Xy9FNZFOi3DpnY9yw5QXSz4VPIyCv9XtXkrzuRQnIXL6As/m2a1aaudoX4gQ4nDv5Svf28UN3/V5KgGieNmM3FJxbadT2TmqpivYCeFu5F/9osWANL8tHMTDqigL9UaH9Bslp93LZRbGGhkO98F9TUWIxy+ce4US6xJm8ffBWw5ZV/8sBJqRAoUxivZfpAlXrbBLyFAgnQePdlhEAFNCEkU2PawP4NazOZzI3K4Xt3MqkgjNw3g86aWqO6B2rr4aswCErdIR22oro7zCUFtljYllHuZLEXBooh3KXUYRvBK7QBSeSZjqKzpTj1IclrMvHKfsBEVyLc3pcyh0wy05mnBgaPncohA9odsIxP6bof0Px/dc3wXH5sMCdxZ1vY4lX97AkQB5ke6KTVQQDnDA3H8cDisAfjEMhYwS2Ij0qU6dqgxo9cckrmI/LiWG+8h/1T8nZpauTTPguyY3VPf+C8BnhvYSt/3nKJkE800JLMbzEni1JlCVcbk3T4JPJPwfrec7fvbRACwTgMlHUNjIUUXgYoLb5yPL1N0IL0p94JXPpkLNjki3QQzirEnCePIRz3pxxscsaVKPUQIsRyNjQ== danil80sch@gmail.com"
    # Laptop
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCzO9dqxi7X2uR6IFpDgZkVxNvoSlG9JibFXcPiNdqRrujDclb9rHx+bB9nuOJuiZkSlpRHHxvMNCvRGJdWE/SHcOqV0P+reRQDZUQYxdUZwvfX6QEop66B6iKfCq+wukkDzZnXDsKufviytvt0T+J/F0ybP34zAsg/gqAR6DwZlvdJTwAPwAvVdzZV3EKFw/TNhXoEfMdgtvr1a7mgEoJPsjvovNVmyYxduICQSzaeLTLRviCD7BHQqgZQ4Oct1P2z4U1Ij61Ukpgot8OVPxiV+yNlFN7euKRP2Ibl+QQiIg9y8DdwV7hNWd9yDC1tVVO+RATd8PrtbiijAul6i7bGr+ogIjVlFF/0xZKrTVS6xQ1MWjUHAlrqgCfGVT09GkP9/RMwgYgRGNs4iFhw9Qmsy/d2FOTwtnwIzNpcD0/zHGM665AIBL9gPQMMkTBksQSFDjR4+VmvWVijyafDLyr7yJOc9WfoMYWKjBHfF9LP0TSNCzxNP7nC0sai4k3KX72WonCm45JpeM5z5J9aJGjsH9EA4av/+R0otfHeejUmNsDh5I36k7RC4XjdcK2zLDSTbReazQUo116LGM4NSTqOShH9sq2xke8BOvM1bQo2b+y0crnoZxWSkAeGkLFAkXCCIdBJa4aYF62U4l7D0WpsBQPI8VSAChHgJzYHMPuznw== danil80sch@gmail.com"
    # Server
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCkBDO0rkm/igp1lc0JCoxzRNRWd94z+FJ5DV0vW5T9C+ChuiBJWBAEqhnpXq7sgYr4MbXwYw16Kk5WNls55D5F0GG/XMBsjJuTXjPu92URVPoqja1DQ3Nvb2DCxc5Y4+Dr4u/FY97Jp/LcoT4NQ25S697/kGwXTbOSvW7szObBoycZamGc0VNlyS1qYY14cHMIuLsxUvJcahbU3Pne3TE98tGkk7a1q1Arlyo2fNcF0GhKW7SXpmW0nVnTapn+gixVnDOcovluS9fCDOCU3mkyPjFhtxmvI6DTnqHRj6SzyP6v1ml6nL1Mlgj3ejBFVNBHULQlapsdTye7oSykF91Gr59B5mmoOlS8o6KDtNRCEOSS+hLezbNYIGw/rjVJdco8dbUt1thCoarZpzMFFAb+fjIXYilb1i0h1tMyjcj+8Lke7LtCtpBy85ux0q3T0tG8xqlvW5oGkbkVWvonuw0Seqkp5M8MQUYDgzPMIrD+YPQN5/3uXO3AbOkE8+/pruDX130JhSKoh9D/5Q71zJ/sR1piwsudnfsKhveJPVvcjOlc2dl9kk0dRXhSHDdmpDWZ5Jvrw0OFcKVZO1g62JRy2qwfVmN4YdrKb3aeehwh9xW975lZPrxsdQmg22BtyifxOuiqcNaW5/tygGNwZHvF4ZOFbW9ppwMQZKLtV8yzhQ== danil80sch@gmail.com"
   ];

   systemKeys = [
   # Tower
   "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDUFkuf08utRtROE1P/LA+g5eVdn7JEMo6B10I9VdGv8KbS7llqlQXH9a5YtrWdUq1Jyu7bebUbjEpqXHqf1tbeuFGTP6oCwLg2fDnvwYsNuPw+w1Rp0Y3MYIfUm09MLP5te/JqIL8j+lCPk/3UX0VBTylCMNzISy5ND0sr7v0d5Cfa3KXOoR7P08xPsa2g9/s76uGZ/ltlaPwzfXfzOlM4n+DC0nQf3j73RG15r0S9TcyfALyZN5Cov2H9SVy26V0uPwX3p2gbS5E4yQSklz34Ta/1432FHJOYUUjVkO9QKsUqjBtZuZpf0QtIJ3rGR9/sEsnNrXtXkHYHjLWl3vDV/HNRz93vHm7g+dgINbtxwDTTIzY0oaG55aNPajIv4zqDBbUUlbaEqgnMdsCUCk7UA30Pc2z0rbtbr8+4jxDQiFUi7xwawMJsq4cCKI+gfPGV99Xx11shsIbDT9+oixRQOcydw5+/61sFk+oTxp1Qdlsk7ZSZ4mmRds3VLAp16in6sfJ9Qxk6KxJnPNnMnuhCizozMgbFWtHQsweXgs8OwGCyDIim4xGILKmwCiYMEs88TR2XJikm7hW59/2L2R2QTqvd2BGmLeUNUTzzk3nYzjTCEzmkLyuKhRsYBXEw4KoeD/iJGhJXsCyc2Maupun4uVlKUDKlh9MTqDk296j1sw=="
   # Laptop
   "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC2+HGWXHccEFDMwy00ZUEqaz6CnXWVGaVS6lfRlxfjh3SPGVoUHGd8S/y+2PT59+a3EOlHuOd9KL9GpARR2jWcJV8+ajod3jp4AR/w+2BcssMEPMJ7t+N+aJVA4hihcvtCMOy0E1fSqjcB8cru/1zLIzDfGqq28tTDOWfv6ZhYPnNngmbkwKMyj6SOudl+NIrAMrwenrMe/6TRk7X8ufXrXvIy1ygYIbmMEieMa+K1DmTOQZc1M4UH6fNminR560CaOdte5yiKxOWmT8qMA6ICa2L4Ckmpy4Ts5vNTrm+oVDdMUgpMSrWPnB5hSaVJKOX40yFygCIw3+CM2s2xWt5kqk+8G7Yv89gE8II4Gc84KOAUeRj7QeD8dB4FEtYUA9tbIssKm7u3MsxCosLKPK1gS7+M45N3Zz1LK1u9S4mS4MVVkNX//XRdL9lbHR0zwA2fUazBKpNlEgoS2ZZ9AoITbc62b5/vd3qhQgOeXYBQXmpWg+Xq+fy+6RMTd0KwyCRip9+pk41WDDGmUvRW23wm5GuuUwr+46ZiyS7zCLdt1bHeP6FrQgk9Ts4KzRCeNxiEf9xrEyOQLO5ttwHTiKvtR1ClTEkGK54QesSA9dxdyRk6+J1K0RYCnfGXpMmoZNdcUQRvY0S2g/flVVAYBrAlsmFOG3BExJB667aalk9XEw== "
   # Server
   "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDm3TOI6Wpl3CNoc+w+px4DmzfMdU4WT2zm2HXlonHunCu3Ik5zGo4wh8P/PT9+b/5JovrjI0seh8a/cP70R6jpAQdTdsiTF1ReXuPj2XgfnCM6MTBLkrMC+PH7GUbP43XqFB5Y2HIWsydaFlb6Rupln2IkVe3uYfGHZK3eRA5/J7EDLbQMutZwLHJZcMYcFuQ+RKbRoJ9pWH1rl4K28Gd9SQZSvher5GQz4OvhqW2G65vDkApDyakmHtNtUhYAFFKa3bX/92NS0nQUno3KN8943D9t5ii1It5uOS+Kokc1Abq19AfQhbCyjOZCRDTK2YtJN31jcGbmwnU+Eh8bStvBdGM064i77xwDxzwq35O7CrSGeti2dVKJWAAvfTYgaKf+nCztK7uDe22TEFr2+JYJ9kks6h3C6leEX8jU+mxsZPNYTmndNjJTmswimWshgQ67QFPhFKoIhgasUYdZ7HwcwRfm014II2CuThEQSDTeR5oM+REVYcr1VIJ1rnrUQn8WIBNCTtJV42KZ7Y7EKZycnmlkMzHRoJXDoRnFwFEvpoYvBobU54EYFEJmB7aawDdnJ1r15vErEnZoyaqdeorzjjDGu4JbA147LFzEggyPIzlYA90kOnET6mgEmYOwq9diK4qKE7mYzhPVHBx2Ncvx6L/Rd3jT3+oDeXLH9MMFKw=="
   ];

   allKeys = userKeys ++ systemKeys;
in
{
    # Desktop env files
    "wifi-profiles.env.age".publicKeys = allKeys;

    # Privat Keys
    "wg-vpn.key.age".publicKeys = allKeys;
    "wg-vpn.paired-key.age".publicKeys = allKeys;

    # Server Files
    "cloudflare.env.age".publicKeys = allKeys;
    "firefly.env.age".publicKeys = allKeys;
    "vaultwarden.env.age".publicKeys = allKeys;
}