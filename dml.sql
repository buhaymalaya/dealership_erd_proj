-- INSERT INTO customer() VALUES (), (), ()


INSERT INTO dealership(

    dealer_name,
    dealer_address,
    dealer_phone
) VALUES (
    'Devito in Matilda',
    '123 Sketch St, Jankytown',
    '222333444'
),
(
    'Honest to None',
    '1010 Scammalot Ct, Deceiville',
    '1234567890'
),
(
    'Always Sunny',
    '2839 Flip Flip Flipadelphia',
    '1213141516'
);


INSERT INTO customer(

  first_name,
  last_name,
  dealership_id
) VALUES (
    'Jim',
    'Halpert',
    1
),
(
    'Michael',
    'Scott',
    2
),
(
    'Meredith',
    'Palmer',
    3
),
(
    'Dwight',
    'Schrute',
    1
);