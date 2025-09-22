# Seeds Healthy - Structure propre avec quantity_number et unit
# Sel, poivre, huile d'olive mentionnés dans instructions mais pas comptés dans ingrédients

# Nettoyage de la base de données
puts "Suppression des données existantes..."
RecipeIngredient.destroy_all
Recipe.destroy_all
Ingredient.destroy_all

puts "Création des ingrédients..."


salmon = Ingredient.find_or_create_by!(name: "Saumon")
poulet = Ingredient.find_or_create_by!(name: "Blanc de poulet")
riz_complet = Ingredient.find_or_create_by!(name: "Riz complet")
quinoa = Ingredient.find_or_create_by!(name: "Quinoa")
brocoli = Ingredient.find_or_create_by!(name: "Brocoli")
courgette = Ingredient.find_or_create_by!(name: "Courgette")
tomate = Ingredient.find_or_create_by!(name: "Tomate")
avocat = Ingredient.find_or_create_by!(name: "Avocat")
oeufs = Ingredient.find_or_create_by!(name: "Œufs")
thon = Ingredient.find_or_create_by!(name: "Thon au naturel")
lentilles_vertes = Ingredient.find_or_create_by!(name: "Lentilles vertes")
patate_douce = Ingredient.find_or_create_by!(name: "Patate douce")
epinards = Ingredient.find_or_create_by!(name: "Épinards frais")
champignons = Ingredient.find_or_create_by!(name: "Champignons de Paris")
pates_completes = Ingredient.find_or_create_by!(name: "Pâtes complètes")
mozzarella = Ingredient.find_or_create_by!(name: "Mozzarella")
crevettes = Ingredient.find_or_create_by!(name: "Crevettes décortiquées")
concombre = Ingredient.find_or_create_by!(name: "Concombre")
carotte = Ingredient.find_or_create_by!(name: "Carotte")
oignon = Ingredient.find_or_create_by!(name: "Oignon")
ail = Ingredient.find_or_create_by!(name: "Ail")
gingembre = Ingredient.find_or_create_by!(name: "Gingembre frais")
citron = Ingredient.find_or_create_by!(name: "Citron")
persil = Ingredient.find_or_create_by!(name: "Persil frais")
basilic = Ingredient.find_or_create_by!(name: "Basilic frais")
tomates_cerises = Ingredient.find_or_create_by!(name: "Tomates cerises")
feta = Ingredient.find_or_create_by!(name: "Feta")
cabillaud = Ingredient.find_or_create_by!(name: "Cabillaud")
aubergine = Ingredient.find_or_create_by!(name: "Aubergine")
poivron = Ingredient.find_or_create_by!(name: "Poivron")
lentilles_corail = Ingredient.find_or_create_by!(name: "Lentilles corail")
lait_coco = Ingredient.find_or_create_by!(name: "Lait de coco")
coriandre = Ingredient.find_or_create_by!(name: "Coriandre fraîche")
dinde = Ingredient.find_or_create_by!(name: "Escalope de dinde")
pois_chiches = Ingredient.find_or_create_by!(name: "Pois chiches")
saumon_fume = Ingredient.find_or_create_by!(name: "Saumon fumé")
riz_basmati = Ingredient.find_or_create_by!(name: "Riz basmati")
boeuf = Ingredient.find_or_create_by!(name: "Émincé de bœuf")
haricots_verts = Ingredient.find_or_create_by!(name: "Haricots verts")
fromage_blanc = Ingredient.find_or_create_by!(name: "Fromage blanc 0%")

puts "Création des recettes"

# Recette 1 - Saumon Grillé au Quinoa et Brocolis
r1 = Recipe.create!(
  title: "Saumon Grillé au Quinoa et Brocolis",
  description: "Plat complet riche en protéines et oméga-3, parfait pour un dîner équilibré.",
  instructions: "1. Faites cuire le quinoa 15 minutes dans de l'eau salée.\n2. Faites cuire les brocolis à la vapeur 10 minutes.\n3. Assaisonnez le saumon avec sel, poivre et un filet d'huile d'olive.\n4. Faites griller le saumon 4-5 minutes de chaque côté.\n5. Servez le saumon sur le quinoa avec les brocolis, arrosez d'un filet d'huile d'olive.",
  prep_time: 10,
  cook_time: 20,
  difficulty: "easy",
  calories: 420,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1467003909585-2f8a72700288?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r1, ingredient: salmon, quantity_number: 300.0, unit: "g")
RecipeIngredient.create!(recipe: r1, ingredient: quinoa, quantity_number: 100.0, unit: "g")
RecipeIngredient.create!(recipe: r1, ingredient: brocoli, quantity_number: 300.0, unit: "g")

# Recette 2 - Poêlée de Poulet aux Légumes
r2 = Recipe.create!(
  title: "Poêlée de Poulet aux Légumes",
  description: "Plat coloré et nutritif, rapide à préparer en semaine.",
  instructions: "1. Coupez le poulet en dés et assaisonnez avec sel et poivre.\n2. Faites chauffer un peu d'huile d'olive dans une poêle.\n3. Faites revenir le poulet 8 minutes jusqu'à doré.\n4. Ajoutez courgettes, tomates et champignons, cuisez 10 minutes.\n5. Parsemez de basilic frais et servez avec du riz.",
  prep_time: 15,
  cook_time: 20,
  difficulty: "easy",
  calories: 380,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1532550907401-a500c9a57435?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r2, ingredient: poulet, quantity_number: 300.0, unit: "g")
RecipeIngredient.create!(recipe: r2, ingredient: courgette, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r2, ingredient: tomate, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r2, ingredient: champignons, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r2, ingredient: basilic, quantity_number: 10.0, unit: "g")

# Recette 3 - Salade de Thon aux Pâtes Complètes
r3 = Recipe.create!(
  title: "Salade de Thon aux Pâtes Complètes",
  description: "Salade fraîche et rassasiante, idéale pour un déjeuner équilibré.",
  instructions: "1. Faites cuire les pâtes complètes selon les instructions du paquet.\n2. Rincez les pâtes à l'eau froide et égouttez.\n3. Coupez les tomates en quartiers et le concombre en dés.\n4. Mélangez pâtes, thon, tomates et concombre.\n5. Assaisonnez avec huile d'olive, sel, poivre et basilic frais.",
  prep_time: 15,
  cook_time: 10,
  difficulty: "easy",
  calories: 450,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1551892374-ecf8754cf8b0?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r3, ingredient: pates_completes, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r3, ingredient: thon, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r3, ingredient: tomate, quantity_number: 250.0, unit: "g")
RecipeIngredient.create!(recipe: r3, ingredient: concombre, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r3, ingredient: basilic, quantity_number: 15.0, unit: "g")

# Recette 4 - Omelette aux Épinards et Champignons
r4 = Recipe.create!(
  title: "Omelette aux Épinards et Champignons",
  description: "Petit-déjeuner protéiné ou dîner léger, riche en vitamines.",
  instructions: "1. Faites revenir les champignons émincés dans un peu d'huile d'olive 5 minutes.\n2. Ajoutez les épinards et faites-les tomber 2 minutes.\n3. Battez les œufs avec sel et poivre.\n4. Versez les œufs sur les légumes et laissez cuire 3-4 minutes.\n5. Pliez l'omelette et servez avec une tranche de pain complet.",
  prep_time: 10,
  cook_time: 12,
  difficulty: "easy",
  calories: 320,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1525351484163-7529414344d8?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r4, ingredient: oeufs, quantity_number: 6.0, unit: "unités")
RecipeIngredient.create!(recipe: r4, ingredient: epinards, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r4, ingredient: champignons, quantity_number: 150.0, unit: "g")

# Recette 5 - Buddha Bowl au Saumon
r5 = Recipe.create!(
  title: "Buddha Bowl au Saumon",
  description: "Bowl complet et coloré avec tous les nutriments essentiels.",
  instructions: "1. Faites cuire le quinoa 15 minutes et laissez tiédir.\n2. Faites griller le saumon assaisonné 8 minutes.\n3. Coupez l'avocat en tranches et arrosez de jus de citron.\n4. Disposez dans un bol : quinoa, saumon émietté, avocat, épinards.\n5. Assaisonnez avec huile d'olive, sel et poivre.",
  prep_time: 15,
  cook_time: 20,
  difficulty: "easy",
  calories: 480,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r5, ingredient: quinoa, quantity_number: 100.0, unit: "g")
RecipeIngredient.create!(recipe: r5, ingredient: salmon, quantity_number: 250.0, unit: "g")
RecipeIngredient.create!(recipe: r5, ingredient: avocat, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r5, ingredient: epinards, quantity_number: 100.0, unit: "g")
RecipeIngredient.create!(recipe: r5, ingredient: citron, quantity_number: 0.5, unit: "unité")

# Recette 6 - Curry de Lentilles aux Épinards
r6 = Recipe.create!(
  title: "Curry de Lentilles aux Épinards",
  description: "Plat végétarien indien riche en protéines et épices.",
  instructions: "1. Faites revenir l'oignon et l'ail émincés dans un peu d'huile d'olive 5 minutes.\n2. Ajoutez le gingembre râpé et cuisez 1 minute.\n3. Incorporez les lentilles égouttées et les épinards.\n4. Ajoutez les tomates concassées et laissez mijoter 15 minutes.\n5. Assaisonnez avec sel, poivre et servez avec du riz.",
  prep_time: 15,
  cook_time: 25,
  difficulty: "easy",
  calories: 390,
  servings: 3,
  image_url: "https://images.unsplash.com/photo-1574484284002-952d92456975?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r6, ingredient: lentilles_vertes, quantity_number: 400.0, unit: "g")
RecipeIngredient.create!(recipe: r6, ingredient: epinards, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r6, ingredient: oignon, quantity_number: 1.0, unit: "unité")
RecipeIngredient.create!(recipe: r6, ingredient: ail, quantity_number: 3.0, unit: "gousses")
RecipeIngredient.create!(recipe: r6, ingredient: gingembre, quantity_number: 20.0, unit: "g")
RecipeIngredient.create!(recipe: r6, ingredient: tomate, quantity_number: 400.0, unit: "g")

# Recette 7 - Crevettes Sautées à l'Ail
r7 = Recipe.create!(
  title: "Crevettes Sautées à l'Ail",
  description: "Plat de fruits de mer rapide et savoureux, faible en calories.",
  instructions: "1. Faites cuire le riz complet selon les instructions.\n2. Faites chauffer l'huile d'olive dans une poêle.\n3. Faites revenir l'ail émincé 1 minute sans le brûler.\n4. Ajoutez les crevettes et faites-les sauter 4-5 minutes.\n5. Parsemez de persil, servez sur le riz avec un quartier de citron.",
  prep_time: 10,
  cook_time: 20,
  difficulty: "easy",
  calories: 360,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r7, ingredient: crevettes, quantity_number: 300.0, unit: "g")
RecipeIngredient.create!(recipe: r7, ingredient: riz_complet, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r7, ingredient: ail, quantity_number: 4.0, unit: "gousses")
RecipeIngredient.create!(recipe: r7, ingredient: persil, quantity_number: 20.0, unit: "g")
RecipeIngredient.create!(recipe: r7, ingredient: citron, quantity_number: 1.0, unit: "unité")

# Recette 8 - Gratin de Courgettes Léger
r8 = Recipe.create!(
  title: "Gratin de Courgettes Léger",
  description: "Gratin végétarien allégé, parfait en accompagnement ou plat principal.",
  instructions: "1. Préchauffez le four à 180°C.\n2. Coupez les courgettes en rondelles et faites-les dégorger au sel 20 minutes.\n3. Battez les œufs avec sel, poivre et persil haché.\n4. Disposez les courgettes dans un plat beurré, versez les œufs battus.\n5. Parsemez de mozzarella et enfournez 30 minutes.",
  prep_time: 25,
  cook_time: 30,
  difficulty: "easy",
  calories: 280,
  servings: 4,
  image_url: "https://images.unsplash.com/photo-1506084868230-bb9d95c24759?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r8, ingredient: courgette, quantity_number: 800.0, unit: "g")
RecipeIngredient.create!(recipe: r8, ingredient: oeufs, quantity_number: 4.0, unit: "unités")
RecipeIngredient.create!(recipe: r8, ingredient: mozzarella, quantity_number: 100.0, unit: "g")
RecipeIngredient.create!(recipe: r8, ingredient: persil, quantity_number: 15.0, unit: "g")

# Recette 9 - Salade de Quinoa aux Légumes
r9 = Recipe.create!(
  title: "Salade de Quinoa aux Légumes",
  description: "Salade complète végétarienne, parfaite pour le meal prep.",
  instructions: "1. Faites cuire le quinoa 15 minutes et laissez refroidir.\n2. Coupez tomates, concombre et avocat en dés.\n3. Émincez finement l'oignon rouge.\n4. Mélangez tous les ingrédients dans un saladier.\n5. Assaisonnez avec huile d'olive, jus de citron, sel et poivre.",
  prep_time: 20,
  cook_time: 15,
  difficulty: "easy",
  calories: 380,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r9, ingredient: quinoa, quantity_number: 120.0, unit: "g")
RecipeIngredient.create!(recipe: r9, ingredient: tomate, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r9, ingredient: concombre, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r9, ingredient: avocat, quantity_number: 100.0, unit: "g")
RecipeIngredient.create!(recipe: r9, ingredient: oignon, quantity_number: 0.5, unit: "unité")
RecipeIngredient.create!(recipe: r9, ingredient: citron, quantity_number: 1.0, unit: "unité")

# Recette 10 - Patates Douces Rôties au Poulet
r10 = Recipe.create!(
  title: "Patates Douces Rôties au Poulet",
  description: "Plat au four complet, riche en bêta-carotène et protéines.",
  instructions: "1. Préchauffez le four à 200°C.\n2. Coupez les patates douces en cubes et les carottes en rondelles.\n3. Disposez légumes et poulet sur une plaque, arrosez d'huile d'olive.\n4. Assaisonnez avec sel, poivre et parsemez de persil.\n5. Enfournez 35 minutes jusqu'à ce que tout soit doré.",
  prep_time: 15,
  cook_time: 35,
  difficulty: "easy",
  calories: 420,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1532550907401-a500c9a57435?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r10, ingredient: poulet, quantity_number: 300.0, unit: "g")
RecipeIngredient.create!(recipe: r10, ingredient: patate_douce, quantity_number: 400.0, unit: "g")
RecipeIngredient.create!(recipe: r10, ingredient: carotte, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r10, ingredient: persil, quantity_number: 15.0, unit: "g")

# Recette 11 - Salade Grecque au Quinoa
r11 = Recipe.create!(
  title: "Salade Grecque au Quinoa",
  description: "Version moderne de la salade grecque avec une base de quinoa nutritive.",
  instructions: "1. Faites cuire le quinoa 15 minutes et laissez refroidir.\n2. Coupez les tomates cerises en deux et le concombre en dés.\n3. Émincez finement l'oignon rouge.\n4. Mélangez quinoa, légumes et feta émiettée.\n5. Assaisonnez avec huile d'olive, jus de citron, sel et poivre.",
  prep_time: 20,
  cook_time: 15,
  difficulty: "easy",
  calories: 380,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r11, ingredient: quinoa, quantity_number: 100.0, unit: "g")
RecipeIngredient.create!(recipe: r11, ingredient: tomates_cerises, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r11, ingredient: concombre, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r11, ingredient: feta, quantity_number: 100.0, unit: "g")
RecipeIngredient.create!(recipe: r11, ingredient: oignon, quantity_number: 0.5, unit: "unité")
RecipeIngredient.create!(recipe: r11, ingredient: citron, quantity_number: 1.0, unit: "unité")

# Recette 12 - Cabillaud au Four aux Légumes
r12 = Recipe.create!(
  title: "Cabillaud au Four aux Légumes",
  description: "Poisson blanc délicat cuit en papillote avec des légumes colorés.",
  instructions: "1. Préchauffez le four à 200°C.\n2. Coupez aubergine, courgette et poivron en lamelles.\n3. Disposez les légumes et le cabillaud sur du papier sulfurisé.\n4. Arrosez d'huile d'olive, ajoutez l'ail émincé et le persil.\n5. Fermez en papillote et enfournez 25 minutes.",
  prep_time: 15,
  cook_time: 25,
  difficulty: "easy",
  calories: 320,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1544025162-d76694265947?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r12, ingredient: cabillaud, quantity_number: 400.0, unit: "g")
RecipeIngredient.create!(recipe: r12, ingredient: aubergine, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r12, ingredient: courgette, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r12, ingredient: poivron, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r12, ingredient: ail, quantity_number: 3.0, unit: "gousses")
RecipeIngredient.create!(recipe: r12, ingredient: persil, quantity_number: 20.0, unit: "g")

# Recette 13 - Curry de Lentilles Corail
r13 = Recipe.create!(
  title: "Curry de Lentilles Corail",
  description: "Plat végétarien indien crémeux et parfumé, très réconfortant.",
  instructions: "1. Faites revenir l'oignon et l'ail dans un peu d'huile d'olive 5 minutes.\n2. Ajoutez le gingembre râpé et cuisez 1 minute.\n3. Incorporez les lentilles corail et le lait de coco.\n4. Laissez mijoter 15 minutes jusqu'à ce que les lentilles soient fondantes.\n5. Parsemez de coriandre et servez avec du riz basmati.",
  prep_time: 10,
  cook_time: 25,
  difficulty: "easy",
  calories: 420,
  servings: 3,
  image_url: "https://images.unsplash.com/photo-1574484284002-952d92456975?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r13, ingredient: lentilles_corail, quantity_number: 250.0, unit: "g")
RecipeIngredient.create!(recipe: r13, ingredient: lait_coco, quantity_number: 400.0, unit: "ml")
RecipeIngredient.create!(recipe: r13, ingredient: oignon, quantity_number: 1.0, unit: "unité")
RecipeIngredient.create!(recipe: r13, ingredient: ail, quantity_number: 3.0, unit: "gousses")
RecipeIngredient.create!(recipe: r13, ingredient: gingembre, quantity_number: 20.0, unit: "g")
RecipeIngredient.create!(recipe: r13, ingredient: coriandre, quantity_number: 15.0, unit: "g")
RecipeIngredient.create!(recipe: r13, ingredient: riz_basmati, quantity_number: 150.0, unit: "g")

# Recette 14 - Escalope de Dinde aux Champignons
r14 = Recipe.create!(
  title: "Escalope de Dinde aux Champignons",
  description: "Plat traditionnel léger avec une sauce crémeuse aux champignons.",
  instructions: "1. Faites revenir les champignons émincés dans un peu d'huile d'olive 8 minutes.\n2. Réservez les champignons et faites cuire les escalopes 6 minutes de chaque côté.\n3. Remettez les champignons dans la poêle avec l'ail.\n4. Ajoutez le fromage blanc, mélangez et laissez chauffer 2 minutes.\n5. Parsemez de persil et servez avec des patates douces.",
  prep_time: 10,
  cook_time: 20,
  difficulty: "easy",
  calories: 350,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1532550907401-a500c9a57435?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r14, ingredient: dinde, quantity_number: 300.0, unit: "g")
RecipeIngredient.create!(recipe: r14, ingredient: champignons, quantity_number: 250.0, unit: "g")
RecipeIngredient.create!(recipe: r14, ingredient: fromage_blanc, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r14, ingredient: ail, quantity_number: 2.0, unit: "gousses")
RecipeIngredient.create!(recipe: r14, ingredient: persil, quantity_number: 15.0, unit: "g")

# Recette 15 - Bowl de Saumon Fumé à l'Avocat
r15 = Recipe.create!(
  title: "Bowl de Saumon Fumé à l'Avocat",
  description: "Bowl frais et élégant, riche en oméga-3 et bonnes graisses.",
  instructions: "1. Faites cuire le quinoa 15 minutes et laissez tiédir.\n2. Coupez l'avocat en tranches et arrosez de jus de citron.\n3. Émincez finement le concombre.\n4. Disposez dans un bol : quinoa, saumon fumé, avocat, concombre, épinards.\n5. Assaisonnez avec huile d'olive, sel et poivre.",
  prep_time: 15,
  cook_time: 15,
  difficulty: "easy",
  calories: 450,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r15, ingredient: quinoa, quantity_number: 100.0, unit: "g")
RecipeIngredient.create!(recipe: r15, ingredient: saumon_fume, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r15, ingredient: avocat, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r15, ingredient: concombre, quantity_number: 100.0, unit: "g")
RecipeIngredient.create!(recipe: r15, ingredient: epinards, quantity_number: 80.0, unit: "g")
RecipeIngredient.create!(recipe: r15, ingredient: citron, quantity_number: 0.5, unit: "unité")

# Recette 16 - Salade de Pois Chiches aux Légumes
r16 = Recipe.create!(
  title: "Salade de Pois Chiches aux Légumes",
  description: "Salade végétarienne rassasiante, riche en protéines végétales.",
  instructions: "1. Égouttez et rincez les pois chiches.\n2. Coupez tomates, concombre et poivron en dés.\n3. Émincez finement l'oignon rouge.\n4. Mélangez tous les légumes avec les pois chiches.\n5. Assaisonnez avec huile d'olive, jus de citron, sel et poivre, ajoutez le persil.",
  prep_time: 15,
  cook_time: 0,
  difficulty: "easy",
  calories: 380,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r16, ingredient: pois_chiches, quantity_number: 400.0, unit: "g")
RecipeIngredient.create!(recipe: r16, ingredient: tomate, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r16, ingredient: concombre, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r16, ingredient: poivron, quantity_number: 100.0, unit: "g")
RecipeIngredient.create!(recipe: r16, ingredient: oignon, quantity_number: 0.5, unit: "unité")
RecipeIngredient.create!(recipe: r16, ingredient: persil, quantity_number: 20.0, unit: "g")
RecipeIngredient.create!(recipe: r16, ingredient: citron, quantity_number: 1.0, unit: "unité")

# Recette 17 - Wok de Bœuf aux Légumes
r17 = Recipe.create!(
  title: "Wok de Bœuf aux Légumes",
  description: "Plat asiatique rapide avec des légumes croquants et de la viande tendre.",
  instructions: "1. Faites chauffer un peu d'huile d'olive dans un wok ou grande poêle.\n2. Faites sauter l'émincé de bœuf 3 minutes à feu vif.\n3. Ajoutez poivron, courgette et champignons, faites sauter 5 minutes.\n4. Incorporez l'ail et le gingembre, cuisez 1 minute.\n5. Servez immédiatement avec du riz basmati.",
  prep_time: 15,
  cook_time: 10,
  difficulty: "easy",
  calories: 390,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r17, ingredient: boeuf, quantity_number: 300.0, unit: "g")
RecipeIngredient.create!(recipe: r17, ingredient: poivron, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r17, ingredient: courgette, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r17, ingredient: champignons, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r17, ingredient: ail, quantity_number: 3.0, unit: "gousses")
RecipeIngredient.create!(recipe: r17, ingredient: gingembre, quantity_number: 15.0, unit: "g")
RecipeIngredient.create!(recipe: r17, ingredient: riz_basmati, quantity_number: 150.0, unit: "g")

# Recette 18 - Saumon aux Haricots Verts
r18 = Recipe.create!(
  title: "Saumon aux Haricots Verts",
  description: "Plat simple et équilibré, riche en oméga-3 et légumes verts.",
  instructions: "1. Faites cuire les haricots verts à la vapeur 12 minutes.\n2. Faites cuire le riz basmati selon les instructions.\n3. Assaisonnez le saumon avec sel et poivre.\n4. Faites griller le saumon 5 minutes de chaque côté.\n5. Servez le saumon avec les haricots verts et le riz, ajoutez du citron.",
  prep_time: 10,
  cook_time: 25,
  difficulty: "easy",
  calories: 420,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1467003909585-2f8a72700288?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r18, ingredient: salmon, quantity_number: 300.0, unit: "g")
RecipeIngredient.create!(recipe: r18, ingredient: haricots_verts, quantity_number: 300.0, unit: "g")
RecipeIngredient.create!(recipe: r18, ingredient: riz_basmati, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r18, ingredient: citron, quantity_number: 1.0, unit: "unité")

# Recette 19 - Omelette aux Tomates Cerises
r19 = Recipe.create!(
  title: "Omelette aux Tomates Cerises",
  description: "Omelette colorée et savoureuse, parfaite pour un brunch ou dîner léger.",
  instructions: "1. Faites revenir les tomates cerises coupées en deux dans un peu d'huile d'olive 5 minutes.\n2. Ajoutez les épinards et faites-les tomber 2 minutes.\n3. Battez les œufs avec sel et poivre.\n4. Versez les œufs sur les légumes et parsemez de mozzarella.\n5. Laissez cuire 4 minutes et pliez l'omelette, parsemez de basilic.",
  prep_time: 10,
  cook_time: 12,
  difficulty: "easy",
  calories: 350,
  servings: 2,
  image_url: "https://images.unsplash.com/photo-1525351484163-7529414344d8?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r19, ingredient: oeufs, quantity_number: 6.0, unit: "unités")
RecipeIngredient.create!(recipe: r19, ingredient: tomates_cerises, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r19, ingredient: epinards, quantity_number: 100.0, unit: "g")
RecipeIngredient.create!(recipe: r19, ingredient: mozzarella, quantity_number: 80.0, unit: "g")
RecipeIngredient.create!(recipe: r19, ingredient: basilic, quantity_number: 10.0, unit: "g")

# Recette 20 - Poulet aux Légumes du Soleil
r20 = Recipe.create!(
  title: "Poulet aux Légumes du Soleil",
  description: "Plat méditerranéen coloré, tout cuit au four pour plus de simplicité.",
  instructions: "1. Préchauffez le four à 200°C.\n2. Coupez aubergine, courgette, poivron et tomates en morceaux.\n3. Disposez légumes et morceaux de poulet sur une plaque.\n4. Arrosez d'huile d'olive, ajoutez l'ail et assaisonnez.\n5. Enfournez 35 minutes jusqu'à ce que le poulet soit doré.",
  prep_time: 15,
  cook_time: 35,
  difficulty: "easy",
  calories: 400,
  servings: 3,
  image_url: "https://images.unsplash.com/photo-1532550907401-a500c9a57435?w=300&h=200&fit=crop&q=80"
)

RecipeIngredient.create!(recipe: r20, ingredient: poulet, quantity_number: 400.0, unit: "g")
RecipeIngredient.create!(recipe: r20, ingredient: aubergine, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r20, ingredient: courgette, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r20, ingredient: poivron, quantity_number: 150.0, unit: "g")
RecipeIngredient.create!(recipe: r20, ingredient: tomate, quantity_number: 200.0, unit: "g")
RecipeIngredient.create!(recipe: r20, ingredient: ail, quantity_number: 4.0, unit: "gousses")

puts "Seeds terminés"
