require('dotenv').config();
const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const morgan = require('morgan');

const app = express();

app.use(express.json());
app.use(cors());
app.use(helmet());
app.use(morgan('dev'));


app.get('/api/health', (req, res) => {
  res.json({ status: 'ok', message: 'Quran Radio backend is running.' });
});

// Auth routes
// Auth routes
const authRoutes = require('./routes/auth');
app.use('/api/auth', authRoutes);

// User routes
const userRoutes = require('./routes/users');
app.use('/api/users', userRoutes);

// TODO: Add routes for users, programs, messages, notifications, analytics

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
