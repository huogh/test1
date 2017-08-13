module.exports = {
  test: (req, res) => {
    sails.log(`request: ${req.url}`)
    res.json({msg: 'success'})
  }
}