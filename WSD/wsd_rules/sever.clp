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
;She has severed all contact with her family.
;उसने अपने परिवार के साथ सारे सम्पर्क तोड दिए हैं . 
(defrule sever0
(declare (salience 5000))
(id-root ?id sever)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 link|connection|relationship|contact)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodZ_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sever.clp 	sever0  "  ?id "  wodZ_xe)" crlf))
)

;@@@ Added by jagriti(25.1.2014)
;Sever these things into two parts.
;दो भागों में इन चीजों को बाँट दीजिए .
(defrule sever1
(declare (salience 4900))
(id-root ?id sever)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sever.clp 	sever1  "  ?id "  bAMta)" crlf))
)

;.............Default Rule....
;@@@ Added by jagriti(25.1.2014)
;He severed them from the organisation.
;उसने सङ्गठन से उनको अलग किया . 
(defrule sever2
(declare (salience 100))
(id-root ?id sever)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sever.clp 	sever2  "  ?id "  alaga_kara)" crlf))
)

