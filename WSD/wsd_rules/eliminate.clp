
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
;He was eliminated from the tennis match in the first round.		
;उसे पहले दौर में टेनिस मैच से निकाल दिया गया.
;He was eliminated in the third round of the competition.
;उसे प्रतियोगिता के तीसरे दौर में निकाल दिया गया.
;The police eliminated him from their enquiries.
;पुलिस ने उसे उनकी जांच से  निकाल दिया.

(defrule eliminate0
(declare (salience 5000))
(id-root ?id eliminate)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-in_saMbanXI  ?id ?id1)(kriyA-from_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eliminate.clp 	eliminate0   "  ?id " nikAla_xe  )" crlf))
)



;The cyclist has eliminated all the competitors in the race.
;साइकिल चालक ने दौड़ में सभी प्रतियोगियों को हरा दिया .
(defrule eliminate1
(declare (salience 5000))
(id-root ?id eliminate)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 competitor)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eliminate.clp 	eliminate1   "  ?id " harA_xe  )" crlf))
)



;------------------------------------------------------default rules---------------------------------------------------------------------------
;Let's eliminate the course on Akkadian hieroglyphics.
;अकाडिनी hieroglyphics पर पाठ्यक्रम को खत्म करते हैं.
;A move towards healthy eating could help eliminate heart disease.
;स्वस्थ भोजन की दिशा में एक कदम हृदय रोग को खत्म करने में मदद कर सकता है.
;We eliminated the possiblity that it could have been an accident.
;हमने एक दुर्घटना होने कि संभावना को खत्म कर दिया.
;A police officer was accused of helping a drug gang eliminate rivals.
;एक पुलिस अधिकारी पर एक दवा गिरोह प्रतिद्वंद्वियों को खत्म करने में मदद करने का आरोप लगाया गया था.
(defrule eliminate2
(declare (salience 4500))
(id-root ?id eliminate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kawma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eliminate.clp 	eliminate2   "  ?id " Kawma_kara  )" crlf))
)



(defrule eliminate3
(declare (salience 4000))
(id-root ?id eliminate)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eliminate.clp 	eliminate3   "  ?id " raxxa_kara  )" crlf))
)
