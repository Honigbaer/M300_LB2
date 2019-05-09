const express = require('express')
const { Client } = require('pg')

const client = new Client()

client.connect()

client.query('SELECT * FROM hello', (err, res) => {
  console.log(res.rows[0].message)
  client.end()
})