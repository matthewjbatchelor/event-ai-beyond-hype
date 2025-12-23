# AI Beyond the Hype: Making AI Work at Scale - Event Website

A professional, responsive website for the Boardwave AI event in Munich, created from the event PDF.

## Features

- **Fully Responsive Design** - Works seamlessly on desktop, tablet, and mobile devices
- **Modern UI/UX** - Clean, professional design matching the PDF's branding
- **Complete Site Structure** - All sections from the PDF contents page:
  - Event Description
  - Schedule
  - Host Profile
  - Speakers Profiles
  - Guest Profiles (30 guests with full details)
  - Event Connect
  - Event Partner Information
  - Contact Information

- **Interactive Elements**:
  - Smooth scrolling navigation
  - Mobile-responsive hamburger menu
  - Animated section transitions
  - Active navigation highlighting
  - Guest cards with hover effects

## Structure

```
event-profiles-template/
├── index.html          # Main website file
├── styles.css          # All styling and responsive design
├── script.js          # JavaScript for interactivity and guest data
├── README.md          # This file
└── images/
    ├── boardwave-logo.svg
    ├── occ-logo.svg
    ├── placeholder-profile.svg
    ├── event-photo-1.jpg
    ├── networking-photo.jpg
    ├── event-connect-platform.jpg
    ├── panel-discussion.jpg
    ├── kath-easthope.jpg
    ├── benjamin-samuels.jpg
    ├── guillaume-esnou.jpg
    └── guests/
        └── [30 guest profile images]
```

## Getting Started

### Option 1: Open Directly
Simply open `index.html` in your web browser to view the website locally.

### Option 2: Use a Local Server (Recommended)
For the best experience, use a local web server:

```bash
# Using Python 3
python -m http.server 8000

# Using Node.js http-server
npx http-server

# Using PHP
php -S localhost:8000
```

Then navigate to `http://localhost:8000` in your browser.

## Adding Real Images from the PDF

The website currently uses placeholder images. To add the actual images from the PDF:

### 1. Extract Images from PDF

You can extract images from the PDF using various tools:

- **Adobe Acrobat**: File → Export To → Image → JPEG/PNG
- **Preview (Mac)**: Select images and copy them
- **Online tools**: Use PDF to image converters
- **Command line**: Use `pdfimages` or similar tools

### 2. Replace Placeholder Images

Replace these placeholder files with actual images from the PDF:

#### Main Event Images:
- `images/event-photo-1.jpg` - Woman with braids (page 3)
- `images/networking-photo.jpg` - Networking scene (page 4)
- `images/event-connect-platform.jpg` - Platform screenshot (page 15)
- `images/panel-discussion.jpg` - Panel discussion (page 17)

#### Profile Images:
- `images/kath-easthope.jpg` - Host profile photo (page 5)
- `images/benjamin-samuels.jpg` - Speaker photo (page 6)
- `images/guillaume-esnou.jpg` - Speaker photo (page 6)

#### Guest Images:
Extract all guest profile photos from pages 7-14 and save them as:
- `images/guests/achim-weick.jpg`
- `images/guests/andreas-maslo.jpg`
- `images/guests/beatrice-meadowcroft.jpg`
- ... (and so on for all 30 guests)

The naming convention should match the names in `script.js` (lowercase, hyphenated).

### 3. Logo Files

The logos are created as SVG placeholders. For higher quality:
- Extract the Boardwave and OC&C logos from pages 1-2
- Replace `images/boardwave-logo.svg` and `images/occ-logo.svg`
- You can use SVG, PNG, or JPG formats (update HTML if changing format)

## Customization

### Colors
The color scheme is defined in `styles.css` using CSS variables:

```css
:root {
    --primary-dark: #1a1a1a;
    --primary-gold: #b8a67d;
    --secondary-dark: #2d2d2d;
    --text-light: #ffffff;
    --text-dark: #333333;
    --text-gray: #666666;
    --accent-gold: #d4c5a0;
    --bg-light: #f5f5f5;
    --bg-white: #ffffff;
}
```

### Guest Data
All guest information is stored in `script.js`. To modify guest details, edit the `guests` array:

```javascript
const guests = [
    {
        name: "Guest Name",
        title: "Job Title",
        company: "Company Name",
        bio: "Biography text...",
        image: "images/guests/guest-name.jpg",
        badge: null // or "PARTNER", "PATRON", etc.
    },
    // ... more guests
];
```

### Content
All text content is in `index.html`. Edit the HTML directly to update:
- Event details
- Schedule timings
- Descriptions
- Contact information

## Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Responsive Breakpoints

- Desktop: 1024px and above
- Tablet: 768px - 1023px
- Mobile: Below 768px
- Small Mobile: Below 480px

## Key Features

### Navigation
- Fixed header with smooth scrolling
- Mobile hamburger menu
- Active section highlighting

### Hero Section
- Full-screen hero with event details
- Geometric pattern background
- Event partner logo

### Profile Cards
- Responsive grid layouts
- Circular profile images
- Hover animations
- Badge system for partners/patrons

### Timeline
- Visual schedule display
- Color-coded time slots
- Detailed event breakdown

## Deployment

### GitHub Pages
1. Create a GitHub repository
2. Push your files
3. Go to Settings → Pages
4. Select main branch
5. Your site will be live at `https://yourusername.github.io/repository-name`

### Netlify
1. Create account at netlify.com
2. Drag and drop the project folder
3. Site goes live instantly

### Traditional Hosting
Upload all files to your web server via FTP/SFTP.

## Support

For any issues or questions about the website:
- Check browser console for errors
- Ensure all image paths are correct
- Verify JavaScript is enabled
- Test in multiple browsers

## Credits

**Design Based On**: Boardwave Event PDF - "AI Beyond the Hype: Making AI Work at Scale"
**Event Partner**: OC&C Strategy Consultants
**Developed**: 2025

## License

This website template is created for the specific Boardwave event. Please respect copyright and branding guidelines when using.

---

**Note**: Remember to replace all placeholder images with actual images from the PDF for the complete professional look!
