;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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


;He got a degree in medicine from the famous medical college.
;उसने प्रसिद्ध मेडिकल कॉलेज से चिकित्सा में उपाधि प्राप्त की.
;She received the Bachelor of Arts degree at commencement.
;वह प्रारंभ में कला स्नातक की उपाधि प्राप्त की.


(defrule degree0
(declare (salience 4800))
(id-root ?id degree)
?mng <-(meaning_to_be_decided ?id)
(or(id-word =(+ ?id 1) in)(samAsa  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upAXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degree.clp 	degree0   "  ?id "  upAXi )" crlf))
)

;The angle can be measured in degrees.
;कोण अंशों में नापा जा सकता है . 
;Sum of all the three angles of a triangle is 180 degrees.
;त्रिकोण का सभी तीन कोण का जोड 180 अंश होता है.
;There are 360 degrees in a circle.
;एक सर्कल में 360 अंश होते हैं.

(defrule degree1
(declare (salience 4800))
(id-root ?id degree)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-saMKyA_viSeRaNa  ?id ?id1)(kriyA-in_saMbanXI  ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degree.clp 	degree1   "  ?id "  aMSa )" crlf))
)


;It has a high degree of accuracy.
;इसमें सटीकता की एक उच्च स्तर है.
;It proceeded to the next degree of difficulty.  
;यह कठिनाई के अगले स्तर के लिए रवाना हुए.
(defrule degree2
(declare (salience 4900))
(id-root ?id degree)
?mng <-(meaning_to_be_decided ?id)
(or(and(viSeRya-viSeRaNa  ?id ?id1)(viSeRya-of_saMbanXI  ?id ?id2))(samAsa  ?id3 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degree.clp 	degree2   "  ?id "  swara )" crlf))
)

;We followed the degrees of her recovery with joy.
;हमने खुशी से उसके स्वाथ्य लाभ के स्तर का अनुसरण किया . .
(defrule degree3
(declare (salience 4950))
(id-root ?id degree)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id2)
(id-word ?id2 recovery)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degree.clp 	degree3   "  ?id "  swara )" crlf))
)


;They modernized their facilities to a large degree.
;उन्होनें अपनी सुविधाओं का आधुनिकीकरण एक बड़ी मात्रा में किया .
;The degree of ionisation varies with the height.
;आयनीकरण की मात्रा ऊंचाई के साथ बदलती रहती है.
;He doesn't like spicy food, but can eat a little pepper to a degree.
;वह मसालेदार खाना पसंद नहीं है, लेकिन एक  मात्रा में एक छोटी सी काली मिर्च खा सकते हैं.

(defrule degree4
(declare (salience 4800))
(id-root ?id degree)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id ?id1)(kriyA-to_saMbanXI  ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degree.clp 	degree4   "  ?id " mAwrA )" crlf))
)

;Tall is the positive degree, taller the comparative degree, and tallest the superlative degree of the adjective tall.
;लंबा सकारात्मक डिग्री, लम्बे तुलनात्मक डिग्री, और विशेषण का सबसे बड़ा अतिशयोक्ति डिग्री लंबा है.
;The game was played in spite of the 40-degree temperature.
;खेल के 40 डिग्री तापमान के बावजूद खेला गया था.
(defrule degree5
(declare (salience 5000))
(id-root ?id degree)
?mng <-(meaning_to_be_decided ?id)
(or(id-word =(+ ?id 1) temperature|celcius|fahrenheit)(id-word =(- ?id 1) positive|comparative|superlative))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id digrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degree.clp 	degree5   "  ?id " digrI  )" crlf))
)


;----------------------------------- default rules -------------------------------------------------
(defrule degree7
(declare (salience 3000))
(id-root ?id degree)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id digrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degree.clp 	degree7   "  ?id " digrI  )" crlf))
)
