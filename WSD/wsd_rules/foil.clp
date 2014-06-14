

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
;Added by Pramila(Banasthali University)
;He foiled attempts by Ram to get the job.
;उसने राम के नौकरी पाने के  प्रयासों को नाकाम कर दिया. 

(defrule foil0
(declare (salience 5000))
(id-root ?id foil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAkAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foil.clp 	foil0   "  ?id "  nAkAma_kara )" crlf))
)

;They fenced with foils at the competition.
;वे प्रतियोगिता में पतली पत्तियों के साथ थे.

(defrule foil1
(declare (salience 5000))
(id-root ?id foil)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 war|sport|fence|competition)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawalI_pawwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foil.clp 	foil1   "  ?id "  pawalI_pawwI )" crlf))
)




;Cool and wrap in foil.
;ठण्डा करो और पन्नी में लपेटो.
;Transfer to sheet pan in oven and cover loosely with foil.
;ओवन में शीट पैन में स्थानांतरण करो और पन्नी से हल्के से कवर करो.
;Lift cake from pan, using foil sides as handles.
;पैन से पन्नी पक्षों को हैंडल के रूप में उपयोग करते हुए केक उठाओ. 
(defrule foil2
(declare (salience 4900))
(id-root ?id foil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pannI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foil.clp 	foil2   "  ?id "  pannI )" crlf))
)






