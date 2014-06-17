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

;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
;An equation obtained by equating a physical quantity with its dimensional formula is called the dimensional equation of the 
;physical quantity. [ncert]
;किसी भौतिक राशि को उसके विमीय सूत्र के बराबर लिखने पर प्राप्त समीकरण को उस राशि का विमीय समीकरण कहते हैं.
(defrule obtain1
(declare (salience 4900))
(id-root ?id obtain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obtain.clp 	obtain1   "  ?id "  prApwa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
;To obtain advice. [cambridge]
;सलाह प्राप्त करना .
(defrule obtain2
(id-root ?id obtain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obtain.clp 	obtain2   "  ?id "  prApwa_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
(defrule obtain3
(id-root ?id obtain)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obtain.clp 	obtain3   "  ?id "  prApwa_kara )" crlf))
)
