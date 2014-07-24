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


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;The chowkidar had bought provisions at the small shops of Gangotri. [Gyannidhi]
;चौकीदार गंगोत्री की छोटी दुकानों में खाद्य सामग्री खरीद चुका था . 
(defrule provision0
(declare (salience 5000))
(id-root ?id provision)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 buy|bring|carry)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAxya_sAmagrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provision.clp 	provision0   "  ?id " KAxya_sAmagrI )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;The government is responsible for the provision of health care. [OALD]
;सरकार स्वास्थ्य सुरक्षा के प्रबन्ध के लिए उत्तरदायी है . 
(defrule provision1
(declare (salience 4900))
(id-root ?id provision)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prabanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provision.clp 	provision1   "  ?id " prabanXa )" crlf))
)

