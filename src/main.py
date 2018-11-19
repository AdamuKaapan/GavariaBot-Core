#!/usr/bin/env python3

import discord
import os


class MyClient(discord.Client):
    async def on_ready(self):
        print('Logged in as ')
        print(self.user.name)
        print(self.user.id)
        print('------')

    async def on_message(self, message: discord.Message):
        if message.author == self.user:
            return

        if message.content.startswith('!'):
            await message.channel.send('You rang?')


def main():
    client = MyClient()
    client.run(os.environ['DISCORD_TOKEN'])


if __name__ == "__main__":
    main()
