;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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


;An example is the best agency of instruction.
; उदाहरण निर्देश का एक सर्वोत्तम माध्यम है . 
;She was freed from prison through the agency of her doctor.
;वह उसके डाक्टर के माध्यम से कारागार से मुक्त की गयी थी .
;The disease spreads from the affected camels to healthy ones , through the agency of biting and blood-sucking flies .
;काटने और खून चूसने वाली मक्खियों के माध्यम से बीमारी बिमार ऊँटों से स्वस्थ वालों को फैल जाती है . 
;Its department for the collection of funds had proved very effective as an agency for publicising its aims and also for raising funds . 
;उसका पूँजी सञ्चयन विभाग उसके लक्ष्य के  प्रचार के लिये और पूँजी ऊपर उठाने के लिए भी एक अत्यन्त प्रभावकारी माध्यम के जैसा सिद्ध हुआ . 

(defrule agency0
(declare (salience 3600))
(id-root ?id agency)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-through_saMbanXI ?kri ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(viSeRya-as_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAXyama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agency.clp 	agency0   "  ?id "  mAXyama )" crlf))
)




;(defrule agency2
;(declare (salience 3800))
;(id-root ?id agency)
;?mng <-(meaning_to_be_decided ?id)
;(viSeRya-as_saMbanXI  ?id1 ?id)
;(kriyA-for_saMbanXI  ? ?)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id mAXyam))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agency.clp 	agency2   "  ?id "  mAXyama )" crlf))
;)

;************************** DEFAULT RULE *******************************************

;The agency issued an internal memo today ordering new training.
;अभिकरण ने नये प्रशिक्षण की आज्ञा देते हुये आज एक आन्तरिक ज्ञापन / स्मृतिपत्र जारी किया 
;His company has agencies all over the world.
;उसकी कम्पनी की पूरे विश्व में अभिकरण हैं 

(defrule agency1
(declare (salience 0))
(id-root ?id agency)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBikaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agency.clp 	agency1   "  ?id "  aBikaraNa )" crlf))
)





;**************************************************** OTHER MEANINGS **************************************************************************

;Shabdkosh and iitb dictionary : aBikaraNa- an administrative unit of government:the Central Intelligence Agency 



;****************************************************EXAMPLES**********************************************************************************

;An example is the best agency of instruction. 
;She was freed from prison through the agency of her doctor.
;The disease spreads from the affected camels to healthy ones , through the agency of biting and blood-sucking flies .
;Its department for the collection of funds had proved very effective as an agency for publicising its aims and also for raising funds . 
;The cross-pollination of most orchard trees and other products is brought entirely by the agency of different insects .
;The familiar glucose biscuits contain added glucose , and a little more glucose arises by the inversion of sugar to glucose and fructose through enzyme agency .  
;The agency issued an internal memo today ordering new training.
;His company has agencies all over the world.

;***************************************************COMPOUND MEANING***************************************************************************
;The Central Intelligence Agency .
;A UN agency responsible for helping refugees. 
;I got this job through an employment agency. 
;A federal agency called the Appraisal Subcommittee.

;*********************************************** TO BE RESOLVED LATER ************************************************************************
;माध्यम
;The familiar glucose biscuits contain added glucose , and a little more glucose arises by the inversion of sugar to glucose and fructose through enzyme agency .
;He obtained his position through the agency of an old friend.[IDIOM-oald]

;She has free agency.(meaning to be decided).

;साधन
;What agency provides the external force?[physics parallel corpus]
;If acid rain or any other agency lowers the pH of a lake , river , or any other water body , fishes and certain other animals become endangered .

;****************************************************TRANSLATION PROBLEM **********************************************************************

;That's what we've been doing really impressively as an agency for the better part of four decades and hopefully for a long time to come.
;Stalin's decision came as a shock to people who had placed high hopes in Soviet support for the organization as an agency for stability in international life.



