const Category = require('../models/categoryModel.js');

exports.createCategory = async (req, res) => {
  const newCategory = await Category.create(req.body);
  res.status(201).json({ status: 'success', category: newCategory });
};

exports.getCategory = async (req, res) => {
  const category = await Category.findById(req.params.id);
  if (!category) {
    res.status(404).json({ status: 'fail', message: `Category not found.` });
  } else {
    res.status(200).json({ status: 'success', category });
  }
};

exports.getAllCategories = async (req, res, next) => {
  const categories = await Category.find();
  res.status(200).json({ status: 'success', categories });
};
