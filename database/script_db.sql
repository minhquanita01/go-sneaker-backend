create database if not exists GO_Sneaker_Store;
use GO_Sneaker_Store;

drop table if exists GO_Shoes;

create table GO_Shoes
(
  shoes_ID integer primary key auto_increment,
  shoes_image_path text,
  shoes_name text,
  shoes_description text,
  shoes_price double check (shoes_price >= 0),
  shoes_color varchar(10),
  shoes_quantity integer check (shoes_quantity >= 0)
);

insert into GO_Shoes (shoes_image_path, shoes_name, shoes_description, shoes_price, shoes_color, shoes_quantity) values
('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/air-zoom-pegasus-36-mens-running-shoe-wide-D24Mcz-removebg-preview.png', 'Nike Air Zoom Pegasus 36', 'The iconic Nike Air Zoom Pegasus 36 offers more cooling and mesh that targets breathability across high-heat areas. A slimmer heel collar and tongue reduce bulk, while exposed cables give you a snug fit at higher speeds.', 108.97, '#e1e7ed', 100),
('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/air-zoom-pegasus-36-shield-mens-running-shoe-24FBGb__1_-removebg-preview.png', 'Nike Air Zoom Pegasus 36 Shield', 'The Nike Air Zoom Pegasus 36 Shield gets updated toconquer wet routes. A water-repellent upper combines withan outsole that helps create grip on wet surfaces,letting you run in confidence despite the weather.', 89.97, '#4d317f', 100),
('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/cruzrone-unisex-shoe-T2rRwS-removebg-preview.png', 'NikeCruzrOne', 'Designed for steady, easy-paced movement, theNike CruzrOne keeps you going. Its rocker-shaped sole andplush, lightweight cushioning let you move naturally andcomfortably. The padded collar is lined with soft wool,adding luxury to every step, while mesh details let yourfoot breathe. There’s no finish line—there’s only you,one step after the next.', 100.97, '#e8d026', 100),
('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/epic-react-flyknit-2-mens-running-shoe-2S0Cn1-removebg-preview.png', 'Nike Epic React Flyknit 2', 'The Nike EpicReact Flyknit 2 takes a step up from its predecessor withsmooth, lightweight performance and a bold look. Anupdated Flyknit upper conforms to your foot with aminimal, supportive design. Underfoot, durable Nike Reacttechnology defies the odds by being both soft andresponsive, for comfort that lasts as long as you can run', 89.97, '#fd584a', 100),
('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/odyssey-react-flyknit-2-mens-running-shoe-T3VG7N-removebg-preview.png', 'Nike Odyssey React Flyknit 2', 'The NikeOdyssey React Flyknit 2 provides a strategic combinationof lightweight Flyknit construction and syntheticmaterial for support. Underfoot, Nike React cushioningdelivers a soft, springy ride for a route that begs to becrushed.', 71.97, '#d4d7d6', 100),
('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/react-infinity-run-flyknit-mens-running-shoe-RQ484B__2_-removebg-preview.png', 'Nike React Infinity Run Flyknit', 'A pioneer in the running shoe frontier honors theoriginal pioneer of running culture with the Nike ReactInfinity Run Flyknit. Blue Ribbon Track Club-inspireddetails pay homage to the haven that was created beforerunning was even popular. This running shoe is designedto help reduce injury and keep you on the run. More foamand improved upper details provide a secure and cushionedfeel.', 160, '#f2f5f4', 100),
('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/react-miler-mens-running-shoe-DgF6nr-removebg-preview.png', 'Nike React Miler', 'The Nike React Miler gives youtrusted stability for miles with athlete-informedperformance. Made for dependability on your long runs,its intuitive design offers a locked-in fit and a durablefeel.', 130, '#22afdc', 100),
('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/renew-ride-mens-running-shoe-JkhdfR-removebg-preview.png', 'Nike Renew Ride', 'The Nike Renew Ride helps keepthe committed runner moving with plush cushioning. Firmsupport at the outsole helps you maintain stability nomatter the distance.', 60.97, '#b50320', 100),
('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/vaporfly-4-flyknit-running-shoe-v7G3FB-removebg-preview.png', 'Nike Vaporfly 4% Flyknit', 'Built to meet theexacting needs of world-class marathoners, Nike Vaporfly4% Flyknit is designed for record-breaking speed. TheFlyknit upper delivers breathable support, while theresponsive foam and full-length plate provide incredibleenergy return for all 26.2.', 187.97, '#3569a1', 100),
('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/zoom-fly-3-premium-mens-running-shoe-XhzpPH-removebg-preview.png', 'Nike Zoom Fly 3 Premium', 'Inspired by the Vaporfly, the Nike Zoom Fly 3 Premium gives distance runners race-day comfort and durability. The power of a carbon fiber plate keeps you in the running mile after mile.', 160, '#54d4c9', 100);