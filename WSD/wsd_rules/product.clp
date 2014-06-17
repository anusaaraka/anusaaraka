;##############################################################################
;#  Copyright (C) 2002-2005 SHWETA VIKRAM (shwetavikram.2009@rediffmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################

;@@@ Added by Sonam Gupta M.Tech IT Banasthali 2013
(defrule product1
(declare (salience 9000))
(id-root ?id product)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 number)
(id-cat_coarse ?id2 number)
(id-cat_coarse ?id3 number)
(id-cat_coarse ?id4 conjunction)
(and(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-of_saMbanXI  ?id ?id2)(subject-subject_samAnAXikaraNa  ?id ?id3)(conjunction-components  ?id4 ?id1 ?id2)
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNanaPala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  product.clp 	product1 "  ?id "  guNanaPala)" crlf))
)

;$$$ Modified by Sonam Gupta MTech IT Banasthali 2/4/2014 (added magnitude in ?id1)
;$$$ Modified by SONAM GUPTA(25/10/2013)
;@@@Added by SHWETA VIKRAM(10/09/2013)
;Taken together, the product of mass and velocity, that is momentum, is evidently a relevant variable of motion. 
;sAWa - sAWa lene para, saMhawi Ora vega kA guNanaPala, arWAwa saMvega, prawyakRa rUpa se gawi kA eka prAsafgika cara hE .(Manual) 
;jo vaha gawi hE, eka sAWa lI huI, parimANa Ora vega kA, vaha guNanaPala gawi kI spaRta rUpa se eka upayukwa parivarwanaSIla vaswu hE.
(defrule product2
(declare (salience 8000))
(id-root ?id product)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
;(id-cat_coarse ?id1 noun)
(id-word ?id1  mass|force|area|length|breadth|velocity|speed|magnitude)
(viSeRya-of_saMbanXI  ?id  ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNanaPala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  product.clp 	product2 "  ?id "  guNanaPala )" crlf))
)



;@@@ Added by SHWETA VIKRAM(10/09/2013)
;Carbon dioxide is a waste product produced by the burning of food .
;kArbana dAI AksAida Bojana ke pacane ke bAxa bacA vyarWa paxArWa howA hE .
;कार्बन डाई आक्साइड भोजन के पचने के बाद बचा व्यर्थ पदार्थ होता है . 
(defrule product3
(declare (salience 7000))
(id-root ?id product)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  product.clp  product3 "  ?id "  paxArWa )" crlf))
)

;@@@ Added by SHWETA VIKRAM(14/09/2013)
;It was a product of the accumulated grievances of the people against the foreign government . 
;yaha vixeSI sarakAra ke viruxXa logoM ke saFcaya kie hue manomAlinya kA pariNAma WA.(Anusaaraka)
;यह विदेशी सरकार के विरुद्ध लोगों के सञ्चय किए हुए मनोमालिन्य का परिणाम था . 
(defrule product4
(declare (salience 6000))
(id-root ?id product)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  product.clp 	product4 "  ?id "  pariNAma)" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthai 2-4-2014
;Each vector A and B has a direction but their scalar product does not have a direction. [Physics]
;इस प्रकार A.B सदिश A के परिमाण तथा B के अनुदिश A के घटक के गुणनफल के बराबर होता है.
(defrule product5
(declare (salience 9500))
(id-root ?id product)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 scalar|vector)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNanaPala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  product.clp 	product5 "  ?id "  guNanaPala)" crlf))
)

;-------------------- Default rule ----------

;@@@ Added by SHWETA VIKRAM(31/08/2013)
;This product can be used on wet or dry hair.
;yaha uwpAxa gIle yA sUKe keSa para upayoga kiyA jA sakawA hE.(Anusaaraka)
(defrule product6
(id-root ?id product)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  product.clp 	product6 "  ?id "  uwpAxa )" crlf))
)



;http://10.2.56.85:8084/Gyan_Search_80M/
;HEC is now undertaking a program of product diversification . 
;एच . ई . सी . अब अपने उत् पादों में वैविध् यकरण का कार्य हाथ में ले रहा है.
;Not just that : the hydrogenated product will not melt in the mouth instantly . 
;तेल व्यापार उत्पाद मुंह में तत्काल घुलेगा भी नहीं .
;This art is a peculiar product of the early Chola period . 
;यह प्राचीन चोल युग में विकसित कला है . (Discuss)
;Doing such a job manually will usually lead to an inaccurate product . 
;रोबोट का प्रयोग यहां वरदान सिद्व होगा जो सतर्कता से यह काम कर सकता है .
;Indian cheese : Ripened cheese is not a common traditional product in the sub-continent . 
;भारतीय चीज़ : परिपकव चीज़ उपमहाद्वीप मे सामान्य पारंपरिक उत्पाद नही है .
;Popular culture , largely a product of the mass media , is another unifying factor . 
;लोकप्रिय संस् कृति भी एक एकता प्रदान करने वाली कारक है.
;The supply of alcohol is linked with the availability of molasses which is a by-product of the sugar industry . 
;अल् कोहल की आपूर्ति गुड़ की उपलब् धता से जुड़ी है और गुड़ चीनी का सहयोगी उत् पाद अथवा चीनी का सह - उत् पाद है .
;The environment therefore plays its part in shaping the finished product . 
;अंत : परिवेश भी इसे अंतिम रूप देने में अपनी भूमिका निभाता है.(Discuss)
;Food is not digested properly and the end-product is like the uncooked food or unripe fruit . 
;भोजन ठीक से नहीं पचता और अंतिमोत् पाद अर्धपक् व भोजन अथवा अपक् व फल के समान होता है .
;Meaning
;==1.uwpAxa
;==2.paxArWa
;==3.guNanaPala
;==4.pariNAma
;==5.uwpAxana
;==6.guNana
;==7.Pala
;==8.nikAsi
;==9.pExAvara
;==10.mAla










