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

;He walks into the cell of an 83-year-old monk, seated with his back to the door.
;vaha xaravAje kI waraPa pITa kare hue @83-@year-@old BikRu ke kakRa ke anxara jAwA hE .
;The cell of a paying guest turned out to be considerably larger than mine.
;eka peiMga gesta kA kakRa mere kakRa kI apekRA me bahuwa aXika badA nikalA.
(defrule cell1
(declare (salience 3700))
(id-root ?id cell)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cell.clp 	cell1   "  ?id "  kakRa )" crlf))
)


;The cell of a honeycomb
;maXu koRa ke KAne me.
;cell of a grid.
;grida kA KAnA.
(defrule cell2
(declare (salience 3600))
(id-root ?id cell)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id ?id1)
;(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
(id-root ?id1 ?str);As suggested by Chaitanya Sir removed inanimate.gdbm and modified the fact as shown by Roja (03-12-13) 
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cell.clp 	cell2   "  ?id "  KAnA )" crlf))
)

;--------------------- Default Rule --------------------------

;Virtually every force that we can think of like friction, chemical force between atoms holding the matter together, and even the forces describing processes occurring in cells of living organisms, have its origin in electromagnetic force.
;vaswuwaH ve saBI bala jinake viRaya meM hama vicAra karawe hEM , jEse GarRaNa paxArWa ko saMyojiwa raKane ke lie unake paramANuoM ke bIca lagane vAlA rAsAyanika bala yahAz waka ki sajIvoM kI koSikAoM meM hone vAlI prakriyAoM kI vyAKyA karane vAle baloM kA uxBava BI vExyuwacumbakIya baloM se huA hE . 
;The cell development has three layers.
;koSikA vikAsa kI wIna paraweM hEM . 
(defrule cell3
(id-root ?id cell)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koSikA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cell.clp     cell3   "  ?id "  koSikA )" crlf))
)


;***************************** TO BE RESOLVED LATER **************************************

;The Fisher exact test was used when expected cell value was less than 5.

;**************************** EXAMPLES **************************************************

;Virtually every force that we can think of like friction, chemical force between atoms holding the matter together, and even the forces describing processes occurring in cells of living organisms, have its origin in electromagnetic force.
;He walks into the cell of an 83-year-old monk, seated with his back to the door.
;cell of a grid.
;The cell of a paying guest turned out to be considerably larger than mine.
;Please fill in a number for each cell of the grid.

;The oxygen needed by a fuel cell is usually simply obtained from air.
;Solar cells are still ten times too expensive for use in housing.

;The cell development has three layers.
;Arthritis is a disease that might be treated using regeneration through stem cell injections. 
;Patients with sickle cell disease are treated at the royal london.
;He made a complete recovery from the red blood cell breakdown.
;Too high a concentration of calcium can kill brain cells.
;The red cells of the donation shall be tested twice.
;The problem is that only 0.2 % of the damaged nerve cells are replaced.
;In parallel, we are growing stem cells from prostate cancers.

;The thought of using text messaging and cell phones in the classroom?
;The Fisher exact test was used when expected cell value was less than 5.


