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
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURpressure.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
;They finally bowed to pressure from the public. [oald]
;वे आखिरकार जनता के दबाव के आगे झुके .
(defrule pressure1
(declare (salience 5000))
(id-root ?id pressure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pressure.clp 	pressure1   "  ?id "  xabAva )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
;Teachers are under increasing pressure to work longer hours. [oald]
;अध्यापकों को बढते हुए दबाव में ज्यादा घण्टे काम करना पड़ रहा है .
(defrule pressure2
(declare (salience 5000))
(id-root ?id pressure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(and(kriyA-under_saMbanXI  ? ?vrb)(kriyA-object  ?vrb ?id))(and(kriyA-under_saMbanXI  ? ?adj)(viSeRya-of_saMbanXI  ?adj ?id)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pressure.clp 	pressure2   "  ?id "  xabAva )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
;They're putting pressure on me to make a decision. [oald]
;वो मुझ पर निर्णय लेने के लिये दबाव डाल रहे हैं .
(defrule pressure3
(declare (salience 5000))
(id-root ?id pressure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(and(kriyA-object  ?vrb ?id)(kriyA-on_saMbanXI  ?vrb ?))(viSeRya-on_saMbanXI  ?id ?)(viSeRya-of_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pressure.clp 	pressure3   "  ?id "  xabAva )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
(defrule pressure4
(id-root ?id pressure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pressure.clp 	pressure4   "  ?id "  xAba )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
(defrule pressure5
(id-root ?id pressure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabAva_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pressure.clp 	pressure5   "  ?id "  xabAva_dAla )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
(defrule pressure6
(id-root ?id pressure)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pressure.clp 	pressure6   "  ?id "  xabAva )" crlf))
)

