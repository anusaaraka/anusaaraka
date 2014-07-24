;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################
;@@@ Added by jagriti(25.1.2014)
;He was shorn of all powers.
;उसे सब अधिकारों से वंचित कर दिया गया था . 
(defrule shear0
(declare (salience 5000))
(id-root ?id shear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-of_saMbanXI ?id ?id1)
(id-root ?id1 property|power)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaMciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shear.clp 	shear0  "  ?id "  vaMciwa_kara)" crlf))
)

;@@@ Added by jagriti(25.1.2014)
;He was shorn of his entire money.
;उसके सम्पूर्ण पैसे लूट लिए गए. 
(defrule shear1
(declare (salience 4900))
(id-root ?id shear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-of_saMbanXI ?id ?id1)
(id-root ?id1 money)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shear.clp 	shear1  "  ?id "  lUta)" crlf))
)

;....default rule.....
;@@@ Added by jagriti(25.1.2014)
;Sheeps are shorn once every year.
;भेड़े प्रत्येक वर्ष एक बार कतरी जाती हैं. 
(defrule shear2
(declare (salience 100))
(id-root ?id shear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  kawara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shear.clp 	shear2  "  ?id "  kawara )" crlf))
)


