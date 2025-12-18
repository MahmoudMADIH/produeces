const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');
const { authenticateToken, authorizeRoles } = require('../middleware/auth');

// Only producers/admins can list or delete users
router.get('/', authenticateToken, authorizeRoles('producer', 'admin'), userController.getAllUsers);
router.get('/:id', authenticateToken, authorizeRoles('producer', 'admin'), userController.getUserById);
router.delete('/:id', authenticateToken, authorizeRoles('admin'), userController.deleteUser);

module.exports = router;
