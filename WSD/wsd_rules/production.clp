;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam27virgo@gmail.com)
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



;@@@Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;In the Science department out of 82 published papers, based on original investigation, 
;60 were the production of the teachers, 14 were the result of joint efforts of professors and 
;Hundred Years of the University of Calcutta, p, 194-195. students, and 8 were the result of independent 
;research by students.[gyannidhi]
;विज्ञान विभाग में ऐसे 82 प्रकाशित शोद-पत्रों में से जो कि मौलिक खोज पर आधारित थे, 60 अध्यापकों के परिश्रम का फल थे, 
;14 प्रोफेसरों और छात्रों के संयुक्त प्रयासों का परिणाम थे और 8 छात्रों के स्वतंत्र शोध का नतीजा थे। 
(defrule production0
(declare (salience 5000))
(id-root ?id production)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 teacher|employee)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarmaPala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  production.clp 	production0  "  ?id "  SarmaPala )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;A school production of 'Romeo and Juliet'. [Cambridge]
;रोमियो जूलियट का स्कूल प्रदर्शन . 
(defrule production1
(declare (salience 5000))
(id-root ?id production)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  production.clp 	production1  "  ?id "  praxarSana )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;We need to increase production by 20%. [OALD]
;हमें उत्पादन२०% से बढाने की आवश्यकता है . 
(defrule production2
(id-root ?id production)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpAxana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  production.clp 	production2  "  ?id "  uwpAxana )" crlf))
)

