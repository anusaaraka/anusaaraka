;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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

;@@@ added by Pramila(BU) on 18-12-2013
;She plays the violin with great expression.     ;oald
;वह महान भावाभिव्यक्ति से वायलिन बजाती है.
(defrule expression0
(declare (salience 4950))
(id-root ?id expression)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id2 ?id1)
(viSeRya-with_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAvABivyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expression.clp 	expression0   "  ?id "  BAvABivyakwi )" crlf))
)

;@@@ added by Pramila(BU) on 18-12-2013
;Her writing is full of colourful expressions. ;oald
;उसका लेख जीवंत भावाभिव्यक्ति से भरा है.
(defrule expression1
(declare (salience 4950))
(id-root ?id expression)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id1 ?id)
(subject-subject_samAnAXikaraNa  ?id2 ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAvABivyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expression.clp 	expression1   "  ?id "  BAvABivyakwi )" crlf))
)

;@@@ added by Pramila(BU) on 18-12-2013
;Try to put a little more expression into it!    ;oald
;इसमें थोड़ी और-अधिक भावाभिव्यक्ति डालने की कोशिश कीजिए.
(defrule expression2
(declare (salience 4950))
(id-root ?id expression)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(kriyA-into_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAvABivyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expression.clp 	expression2   "  ?id "  BAvABivyakwi )" crlf))
)

;@@@ added by Pramila(BU) on 18-12-2013
;Her expression revealed nothing.        ;gyannidhi
;उसकी हाव-भाव ने कुछ भी नही प्रकट किया .
;The expression in her eyes told me something was wrong.        ;oald
(defrule expression3
(declare (salience 4950))
(id-root ?id expression)
?mng <-(meaning_to_be_decided ?id)
(or(and(viSeRya-in_saMbanXI  ?id ?id2)(viSeRya-RaRTI_viSeRaNa  ?id2 ?id1))(viSeRya-RaRTI_viSeRaNa  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAva-BAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expression.clp 	expression3   "  ?id "  hAva-BAva )" crlf))
)

;@@@ added by Pramila(BU) on 18-12-2013
;There was a worried expression on her face.            ;oald
;उसके चेहरे पर चिंता के हाव-भाव थे.
(defrule expression4
(declare (salience 4950))
(id-root ?id expression)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-on_saMbanXI  ?id ?id2)
(viSeRya-RaRTI_viSeRaNa  ?id2 ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAva-BAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expression.clp 	expression4   "  ?id "  hAva-BAva )" crlf))
)

;@@@ added by Pramila(BU) on 18-12-2013
;4xy2 is an expression.    ;cald
;4xy2 एक पद है.
(defrule expression5
(declare (salience 4900))
(id-root ?id expression)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expression.clp 	expression5   "  ?id "  paxa )" crlf))
)

;@@@ added by Pramila(BU) on 18-12-2013
;He uses a lot of unusual expressions.          ;cald
;वह बहुत असामान्य शब्दों का प्रयोग करता है.
(defrule expression6
(declare (salience 4900))
(id-root ?id expression)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id1 ?id)(viSeRya-jo_samAnAXikaraNa  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sabxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expression.clp 	expression6   "  ?id "  Sabxa )" crlf))
)

;@@@ added by Pramila(BU) on 18-12-2013
;He wrote her a poem as an expression of his love.       ;cald
;उसने अपने प्यार की अभिव्यक्ति के लिए एक कविता लिखी.
(defrule expression7
(declare (salience 4000))
(id-root ?id expression)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBivyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expression.clp 	expression7   "  ?id " aBivyakwi  )" crlf))
)

;@@@ added by Pramila(BU) on 18-12-2013
(defrule expression8
(declare (salience 0))
(id-root ?id expression)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBivyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expression.clp 	expression8   "  ?id "  aBivyakwi )" crlf))
)


