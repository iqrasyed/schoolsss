<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmEmployeeHome.aspx.cs" Inherits="Employee_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid">
                    <div class="span12 ">
                        <div class="box">
                            <header>
                                <h5>Calendar</h5>
                            </header>
                            <div class="body">
                                <div class="row-fluid">
                                    <div class="span3">
                                        <div class="well well-small">
                                            <div id="add-event-form">
                                                <fieldset>
                                                    <legend>Add Custom Event</legend>
                                                    <span class="help-inline">Event Title</span>
                                                    <input id="title" name="title" placeholder="event title" class="input-block-level" type="text">
                                                    <label class="radio">
                                                        <input name="priority" value="label" checked="" type="radio">
                                                        <span class="label">default</span>
                                                    </label>
                                                    <label class="radio">
                                                        <input name="priority" value="label label-important" type="radio">
                                                        <span class="label label-important">important</span>
                                                    </label>
                                                    <label class="radio">
                                                        <input name="priority" value="label label-warning" type="radio">
                                                        <span class="label label-warning">warning</span>
                                                    </label>
                                                    <label class="radio">
                                                        <input name="priority" value="label label-success" type="radio">
                                                        <span class="label label-success">success</span>
                                                    </label>
                                                    <label class="radio">
                                                        <input name="priority" value="label label-info" type="radio">
                                                        <span class="label label-info">info</span>
                                                    </label>
                                                    <label class="radio">
                                                        <input name="priority" value="label label-inverse" type="radio">
                                                        <span class="label label-inverse">inverse</span>
                                                    </label>
                                                    <br>
                                                    <button id="add-event" type="button" class="btn">Add Event</button>
                                                </fieldset>
                                            </div>

                                        </div>
                                        <div class="well well-small">
                                            <h4>Draggable Events</h4>
                                            <ul id="external-events" class="inline">
                                                <li style="position: relative;" class="external-event ui-draggable"><span class="label">My Event 1</span></li>
                                                <li style="position: relative;" class="external-event ui-draggable"><span class="label label-important">My Event 2</span>
                                                </li>
                                                <li style="position: relative;" class="external-event ui-draggable"><span class="label label-success">My Event 3</span>
                                                </li>
                                                <li style="position: relative;" class="external-event ui-draggable"><span class="label label-warning">My Event 4</span>
                                                </li>
                                                <li style="position: relative;" class="external-event ui-draggable"><span class="label label-info">My Event 5</span>
                                                </li>
                                                <li style="position: relative;" class="external-event ui-draggable"><span class="label label-inverse">My Event 6</span>
                                                </li>
                                            </ul>

                                            <label class="checkbox inline" for="drop-remove">
                                                <input id="drop-remove" type="checkbox">
                                                remove after drop
                                                       
                                            </label>
                                        </div>
                                    </div>
                                    <div id="calendar" class="span9 fc fc-ltr">
                                        <table class="fc-header" style="width: 100%">
                                            <tbody>
                                                <tr>
                                                    <td class="fc-header-left"></td>
                                                    <td class="fc-header-center"><span class="fc-header-title">
                                                        <h2>February 2014</h2>
                                                    </span></td>
                                                    <td class="fc-header-right"><span style="-moz-user-select: none;" unselectable="on" class="fc-button fc-button-prev fc-state-default fc-corner-left"><i class="icon-chevron-left"></i></span><span style="-moz-user-select: none;" unselectable="on" class="fc-button fc-button-today fc-state-default fc-state-disabled">today</span><span style="-moz-user-select: none;" unselectable="on" class="fc-button fc-button-month fc-state-default fc-state-active">month</span><span style="-moz-user-select: none;" unselectable="on" class="fc-button fc-button-agendaWeek fc-state-default">week</span><span style="-moz-user-select: none;" unselectable="on" class="fc-button fc-button-agendaDay fc-state-default">day</span><span style="-moz-user-select: none;" unselectable="on" class="fc-button fc-button-next fc-state-default fc-corner-right"><i class="icon-chevron-right"></i></span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="fc-content" style="position: relative; min-height: 1px;">
                                            <div unselectable="on" class="fc-view fc-view-month fc-grid" style="position: relative; -moz-user-select: none; min-height: 1px;">
                                                <div style="position: absolute; z-index: 8; top: 0; left: 0"></div>
                                                <table class="fc-border-separate" style="width: 100%" cellspacing="0">
                                                    <thead>
                                                        <tr class="fc-first fc-last">
                                                            <th style="width: 114px;" class="fc-day-header fc-sun fc-widget-header fc-first">Sun</th>
                                                            <th style="width: 114px;" class="fc-day-header fc-mon fc-widget-header">Mon</th>
                                                            <th style="width: 114px;" class="fc-day-header fc-tue fc-widget-header">Tue</th>
                                                            <th style="width: 114px;" class="fc-day-header fc-wed fc-widget-header">Wed</th>
                                                            <th style="width: 114px;" class="fc-day-header fc-thu fc-widget-header">Thu</th>
                                                            <th style="width: 114px;" class="fc-day-header fc-fri fc-widget-header">Fri</th>
                                                            <th class="fc-day-header fc-sat fc-widget-header fc-last">Sat</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr class="fc-week fc-first">
                                                            <td class="fc-day fc-sun fc-widget-content fc-other-month fc-first" data-date="2014-01-26">
                                                                <div style="min-height: 96px;">
                                                                    <div class="fc-day-number">26</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-mon fc-widget-content fc-other-month" data-date="2014-01-27">
                                                                <div>
                                                                    <div class="fc-day-number">27</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-tue fc-widget-content fc-other-month" data-date="2014-01-28">
                                                                <div>
                                                                    <div class="fc-day-number">28</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-wed fc-widget-content fc-other-month" data-date="2014-01-29">
                                                                <div>
                                                                    <div class="fc-day-number">29</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-thu fc-widget-content fc-other-month" data-date="2014-01-30">
                                                                <div>
                                                                    <div class="fc-day-number">30</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-fri fc-widget-content fc-other-month" data-date="2014-01-31">
                                                                <div>
                                                                    <div class="fc-day-number">31</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-sat fc-widget-content fc-last" data-date="2014-02-01">
                                                                <div>
                                                                    <div class="fc-day-number">1</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="fc-week">
                                                            <td class="fc-day fc-sun fc-widget-content fc-first" data-date="2014-02-02">
                                                                <div style="min-height: 95px;">
                                                                    <div class="fc-day-number">2</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-mon fc-widget-content" data-date="2014-02-03">
                                                                <div>
                                                                    <div class="fc-day-number">3</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-tue fc-widget-content" data-date="2014-02-04">
                                                                <div>
                                                                    <div class="fc-day-number">4</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-wed fc-widget-content" data-date="2014-02-05">
                                                                <div>
                                                                    <div class="fc-day-number">5</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-thu fc-widget-content" data-date="2014-02-06">
                                                                <div>
                                                                    <div class="fc-day-number">6</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-fri fc-widget-content fc-today fc-state-highlight" data-date="2014-02-07">
                                                                <div>
                                                                    <div class="fc-day-number">7</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-sat fc-widget-content fc-last" data-date="2014-02-08">
                                                                <div>
                                                                    <div class="fc-day-number">8</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="fc-week">
                                                            <td class="fc-day fc-sun fc-widget-content fc-first" data-date="2014-02-09">
                                                                <div style="min-height: 95px;">
                                                                    <div class="fc-day-number">9</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-mon fc-widget-content" data-date="2014-02-10">
                                                                <div>
                                                                    <div class="fc-day-number">10</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-tue fc-widget-content" data-date="2014-02-11">
                                                                <div>
                                                                    <div class="fc-day-number">11</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-wed fc-widget-content" data-date="2014-02-12">
                                                                <div>
                                                                    <div class="fc-day-number">12</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-thu fc-widget-content" data-date="2014-02-13">
                                                                <div>
                                                                    <div class="fc-day-number">13</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-fri fc-widget-content" data-date="2014-02-14">
                                                                <div>
                                                                    <div class="fc-day-number">14</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-sat fc-widget-content fc-last" data-date="2014-02-15">
                                                                <div>
                                                                    <div class="fc-day-number">15</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="fc-week">
                                                            <td class="fc-day fc-sun fc-widget-content fc-first" data-date="2014-02-16">
                                                                <div style="min-height: 95px;">
                                                                    <div class="fc-day-number">16</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-mon fc-widget-content" data-date="2014-02-17">
                                                                <div>
                                                                    <div class="fc-day-number">17</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-tue fc-widget-content" data-date="2014-02-18">
                                                                <div>
                                                                    <div class="fc-day-number">18</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-wed fc-widget-content" data-date="2014-02-19">
                                                                <div>
                                                                    <div class="fc-day-number">19</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-thu fc-widget-content" data-date="2014-02-20">
                                                                <div>
                                                                    <div class="fc-day-number">20</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-fri fc-widget-content" data-date="2014-02-21">
                                                                <div>
                                                                    <div class="fc-day-number">21</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-sat fc-widget-content fc-last" data-date="2014-02-22">
                                                                <div>
                                                                    <div class="fc-day-number">22</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="fc-week">
                                                            <td class="fc-day fc-sun fc-widget-content fc-first" data-date="2014-02-23">
                                                                <div style="min-height: 95px;">
                                                                    <div class="fc-day-number">23</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-mon fc-widget-content" data-date="2014-02-24">
                                                                <div>
                                                                    <div class="fc-day-number">24</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-tue fc-widget-content" data-date="2014-02-25">
                                                                <div>
                                                                    <div class="fc-day-number">25</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-wed fc-widget-content" data-date="2014-02-26">
                                                                <div>
                                                                    <div class="fc-day-number">26</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-thu fc-widget-content" data-date="2014-02-27">
                                                                <div>
                                                                    <div class="fc-day-number">27</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-fri fc-widget-content" data-date="2014-02-28">
                                                                <div>
                                                                    <div class="fc-day-number">28</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-sat fc-widget-content fc-other-month fc-last" data-date="2014-03-01">
                                                                <div>
                                                                    <div class="fc-day-number">1</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="fc-week fc-last">
                                                            <td class="fc-day fc-sun fc-widget-content fc-other-month fc-first" data-date="2014-03-02">
                                                                <div style="min-height: 96px;">
                                                                    <div class="fc-day-number">2</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-mon fc-widget-content fc-other-month" data-date="2014-03-03">
                                                                <div>
                                                                    <div class="fc-day-number">3</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-tue fc-widget-content fc-other-month" data-date="2014-03-04">
                                                                <div>
                                                                    <div class="fc-day-number">4</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-wed fc-widget-content fc-other-month" data-date="2014-03-05">
                                                                <div>
                                                                    <div class="fc-day-number">5</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-thu fc-widget-content fc-other-month" data-date="2014-03-06">
                                                                <div>
                                                                    <div class="fc-day-number">6</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-fri fc-widget-content fc-other-month" data-date="2014-03-07">
                                                                <div>
                                                                    <div class="fc-day-number">7</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="fc-day fc-sat fc-widget-content fc-other-month fc-last" data-date="2014-03-08">
                                                                <div>
                                                                    <div class="fc-day-number">8</div>
                                                                    <div class="fc-day-content">
                                                                        <div style="position: relative; height: 0px;">&nbsp;</div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</asp:Content>

