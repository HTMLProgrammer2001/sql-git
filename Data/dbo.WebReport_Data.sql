SET IDENTITY_INSERT [dbo].[WebReport] ON
INSERT INTO [dbo].[WebReport] ([ID], [Name], [Code], [Rdl], [WebReportCategoryID], [WebReportCategorySubID], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [LanguageID]) VALUES (10015, N'DONT TOUCH', N'demo_report', N'<?xml version="1.0" encoding="utf-8"?>
<Report xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner" xmlns:df="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition/defaultfontfamily" xmlns="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition">
  <ReportSections>
    <ReportSection>
      <Body>
        <Height>3.01625cm</Height>
        <ReportItems>
          <Tablix Name="Tablix1">
            <Left>0.26293cm</Left>
            <Top>0.23813cm</Top>
            <Height>2.40771cm</Height>
            <Width>20.87629cm</Width>
            <Style>
              <FontSize>0.35278cm</FontSize>
              <Border>
                <Style>None</Style>
              </Border>
            </Style>
            <DataSetName>TransactionItems</DataSetName>
            <TablixBody>
              <TablixColumns>
                <TablixColumn>
                  <Width>4.63021cm</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>4.57597cm</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>2.75167cm</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>1.74625cm</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>2.54165cm</Width>
                </TablixColumn>
              </TablixColumns>
              <TablixRows>
                <TablixRow>
                  <Height>1.13771cm</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox12">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>1.13771cm</Height>
                          <Width>4.63021cm</Width>
                          <Style>
                            <BackgroundColor>#676767</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>#ffffff</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Item code</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>#f5ea14</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox2">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>1.13771cm</Height>
                          <Width>4.57597cm</Width>
                          <Style>
                            <BackgroundColor>#676767</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>#ffffff</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Item name</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>#f5ea14</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox3">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>1.13771cm</Height>
                          <Width>2.75167cm</Width>
                          <Style>
                            <BackgroundColor>#676767</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>#ffffff</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Price after discount</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>#f5ea14</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox7">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>1.13771cm</Height>
                          <Width>1.74625cm</Width>
                          <Style>
                            <BackgroundColor>#676767</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>#ffffff</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Quantity</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>#f5ea14</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox9">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>1.13771cm</Height>
                          <Width>2.54165cm</Width>
                          <Style>
                            <BackgroundColor>#676767</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>#ffffff</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Amount</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>#f5ea14</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
                <TablixRow>
                  <Height>0.63500cm</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox4">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>4.63021cm</Width>
                          <Style>
                            <BackgroundColor>=IIf(RowNumber("Tablix1") Mod 2=0,"#f2f0f0","Transparent")</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <Visibility>
                            <Hidden>False</Hidden>
                          </Visibility>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!ItemCode.Value</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox5">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>4.57597cm</Width>
                          <Style>
                            <BackgroundColor>=IIf(RowNumber("Tablix1") Mod 2=0,"#f2f0f0","Transparent")</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!ItemName.Value</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox6">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>2.75167cm</Width>
                          <Style>
                            <BackgroundColor>=IIf(RowNumber("Tablix1") Mod 2=0,"#f2f0f0","Transparent")</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!PriceAfterDiscount.Value</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <Format>0.00;(0.00)</Format>
                                    <rd:FormatType>
                                      <rd:Format>Number</rd:Format>
                                      <rd:Representation>None</rd:Representation>
                                      <rd:NegativeValue>(12345)</rd:NegativeValue>
                                    </rd:FormatType>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox8">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>1.74625cm</Width>
                          <Style>
                            <BackgroundColor>=IIf(RowNumber("Tablix1") Mod 2=0,"#f2f0f0","Transparent")</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Quantity.Value</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <Format>0;(0)</Format>
                                    <rd:FormatType>
                                      <rd:Format>Number</rd:Format>
                                      <rd:Representation>None</rd:Representation>
                                      <rd:NegativeValue>(12345)</rd:NegativeValue>
                                    </rd:FormatType>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox10">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>2.54165cm</Width>
                          <Style>
                            <BackgroundColor>=IIf(RowNumber("Tablix1") Mod 2=0,"#f2f0f0","Transparent")</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Amount.Value</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <Format>0.00;(0.00)</Format>
                                    <rd:FormatType>
                                      <rd:Format>Number</rd:Format>
                                      <rd:Representation>None</rd:Representation>
                                      <rd:NegativeValue>(12345)</rd:NegativeValue>
                                    </rd:FormatType>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
                <TablixRow>
                  <Height>0.63500cm</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox21">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>4.63021cm</Width>
                          <Style>
                            <BackgroundColor>#b3b2b3</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox22">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>4.57597cm</Width>
                          <Style>
                            <BackgroundColor>#b3b2b3</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox26">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>2.75167cm</Width>
                          <Style>
                            <BackgroundColor>#b3b2b3</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox24">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>1.74625cm</Width>
                          <Style>
                            <BackgroundColor>#b3b2b3</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Sum(Fields!Quantity.Value)</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Format>0;(0)</Format>
                                    <rd:FormatType>
                                      <rd:Format>Number</rd:Format>
                                      <rd:Representation>None</rd:Representation>
                                      <rd:NegativeValue>(12345)</rd:NegativeValue>
                                    </rd:FormatType>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox25">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>2.54165cm</Width>
                          <Style>
                            <BackgroundColor>#b3b2b3</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Sum(Fields!Amount.Value)</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Format>0.00;(0.00)</Format>
                                    <rd:FormatType>
                                      <rd:Format>Number</rd:Format>
                                      <rd:Representation>None</rd:Representation>
                                      <rd:NegativeValue>(12345)</rd:NegativeValue>
                                    </rd:FormatType>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
              </TablixRows>
            </TablixBody>
            <TablixColumnHierarchy>
              <TablixMembers>
                <TablixMember />
                <TablixMember />
                <TablixMember />
                <TablixMember />
                <TablixMember />
              </TablixMembers>
            </TablixColumnHierarchy>
            <TablixRowHierarchy>
              <TablixMembers>
                <TablixMember>
                  <TablixHeader>
                    <Size>4.63021cm</Size>
                    <CellContents>
                      <Textbox Name="TextBox13">
                        <Left>0in</Left>
                        <Top>0in</Top>
                        <Height>1.13771cm</Height>
                        <Width>4.63021cm</Width>
                        <Style>
                          <BackgroundColor>#676767</BackgroundColor>
                          <FontSize>0.35278cm</FontSize>
                          <VerticalAlign>Middle</VerticalAlign>
                          <PaddingLeft>0.07056cm</PaddingLeft>
                          <PaddingRight>0.07056cm</PaddingRight>
                          <PaddingTop>0.07056cm</PaddingTop>
                          <PaddingBottom>0.07056cm</PaddingBottom>
                          <Border>
                            <Color>#ffffff</Color>
                            <Style>None</Style>
                          </Border>
                        </Style>
                        <CanGrow>true</CanGrow>
                        <KeepTogether>true</KeepTogether>
                        <Paragraphs>
                          <Paragraph>
                            <TextRuns>
                              <TextRun>
                                <Value>= "Group by: " &amp; Parameters!GroupBy.Value</Value>
                                <Style>
                                  <FontSize>0.35278cm</FontSize>
                                  <FontWeight>Bold</FontWeight>
                                  <Color>#f5ea14</Color>
                                </Style>
                              </TextRun>
                            </TextRuns>
                            <Style>
                              <FontSize>0.35278cm</FontSize>
                            </Style>
                          </Paragraph>
                        </Paragraphs>
                      </Textbox>
                    </CellContents>
                  </TablixHeader>
                  <TablixMembers>
                    <TablixMember />
                  </TablixMembers>
                  <KeepWithGroup>After</KeepWithGroup>
                  <RepeatOnNewPage>true</RepeatOnNewPage>
                </TablixMember>
                <TablixMember>
                  <Group Name="Group2">
                    <GroupExpressions>
                      <GroupExpression>=Fields(Parameters!GroupBy.Value).Value</GroupExpression>
                    </GroupExpressions>
                  </Group>
                  <SortExpressions>
                    <SortExpression>
                      <Value>=Fields(Parameters!GroupBy.Value).Value</Value>
                      <Direction>Ascending</Direction>
                    </SortExpression>
                  </SortExpressions>
                  <TablixHeader>
                    <Size>4.63021cm</Size>
                    <CellContents>
                      <Textbox Name="Group21">
                        <Left>0in</Left>
                        <Top>0in</Top>
                        <Height>0.63500cm</Height>
                        <Width>4.63021cm</Width>
                        <Style>
                          <BackgroundColor>#b3b2b3</BackgroundColor>
                          <FontSize>0.35278cm</FontSize>
                          <VerticalAlign>Top</VerticalAlign>
                          <PaddingLeft>0.07056cm</PaddingLeft>
                          <PaddingRight>0.07056cm</PaddingRight>
                          <PaddingTop>0.07056cm</PaddingTop>
                          <PaddingBottom>0.07056cm</PaddingBottom>
                          <Border>
                            <Color>LightGrey</Color>
                            <Style>None</Style>
                          </Border>
                        </Style>
                        <CanGrow>true</CanGrow>
                        <KeepTogether>true</KeepTogether>
                        <Paragraphs>
                          <Paragraph>
                            <TextRuns>
                              <TextRun>
                                <Value>=Fields(Parameters!GroupBy.Value).Value</Value>
                                <Style>
                                  <FontSize>0.35278cm</FontSize>
                                  <Color>black</Color>
                                </Style>
                              </TextRun>
                            </TextRuns>
                            <Style>
                              <FontSize>0.35278cm</FontSize>
                            </Style>
                          </Paragraph>
                        </Paragraphs>
                        <ToggleImage>
                          <InitialState>false</InitialState>
                        </ToggleImage>
                      </Textbox>
                    </CellContents>
                  </TablixHeader>
                  <TablixMembers>
                    <TablixMember>
                      <Group Name="Details" />
                    </TablixMember>
                  </TablixMembers>
                </TablixMember>
                <TablixMember>
                  <TablixHeader>
                    <Size>4.63021cm</Size>
                    <CellContents>
                      <Textbox Name="TextBox20">
                        <Left>0in</Left>
                        <Top>0in</Top>
                        <Height>0.63500cm</Height>
                        <Width>4.63021cm</Width>
                        <Style>
                          <BackgroundColor>#b3b2b3</BackgroundColor>
                          <FontSize>0.35278cm</FontSize>
                          <PaddingLeft>0.07056cm</PaddingLeft>
                          <PaddingRight>0.07056cm</PaddingRight>
                          <PaddingTop>0.07056cm</PaddingTop>
                          <PaddingBottom>0.07056cm</PaddingBottom>
                          <Border>
                            <Color>LightGrey</Color>
                            <Style>None</Style>
                          </Border>
                        </Style>
                        <CanGrow>true</CanGrow>
                        <KeepTogether>true</KeepTogether>
                        <Paragraphs>
                          <Paragraph>
                            <TextRuns>
                              <TextRun>
                                <Value>Total</Value>
                                <Style>
                                  <FontSize>0.35278cm</FontSize>
                                  <FontWeight>Bold</FontWeight>
                                  <Color>black</Color>
                                </Style>
                              </TextRun>
                            </TextRuns>
                            <Style>
                              <FontSize>0.35278cm</FontSize>
                            </Style>
                          </Paragraph>
                        </Paragraphs>
                      </Textbox>
                    </CellContents>
                  </TablixHeader>
                  <KeepWithGroup>Before</KeepWithGroup>
                </TablixMember>
              </TablixMembers>
            </TablixRowHierarchy>
          </Tablix>
        </ReportItems>
        <Style>
          <FontSize>0.35278cm</FontSize>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Body>
      <Width>21.50963cm</Width>
      <Page>
        <PageHeight>21.0058cm</PageHeight>
        <PageWidth>29.6926cm</PageWidth>
        <PageHeader>
          <Height>1.77271cm</Height>
          <PrintOnFirstPage>true</PrintOnFirstPage>
          <PrintOnLastPage>true</PrintOnLastPage>
          <ReportItems>
            <Textbox Name="TextBox1">
              <Left>0.42168cm</Left>
              <Top>0.26293cm</Top>
              <Height>1.21708cm</Height>
              <Width>4.07458cm</Width>
              <Style>
                <PaddingLeft>2pt</PaddingLeft>
                <PaddingRight>2pt</PaddingRight>
                <PaddingTop>2pt</PaddingTop>
                <PaddingBottom>2pt</PaddingBottom>
                <Border>
                  <Style>None</Style>
                </Border>
              </Style>
              <CanGrow>true</CanGrow>
              <KeepTogether>true</KeepTogether>
              <Paragraphs>
                <Paragraph>
                  <TextRuns>
                    <TextRun>
                      <Value>Nayax</Value>
                      <Style>
                        <FontSize>0.74300cm</FontSize>
                        <Color>Black</Color>
                      </Style>
                    </TextRun>
                  </TextRuns>
                  <Style />
                </Paragraph>
              </Paragraphs>
            </Textbox>
            <Textbox Name="TextBox11">
              <Left>13.54601cm</Left>
              <Top>0.21167cm</Top>
              <Height>1.32292cm</Height>
              <Width>6.87884cm</Width>
              <Style>
                <PaddingLeft>2pt</PaddingLeft>
                <PaddingRight>2pt</PaddingRight>
                <PaddingTop>2pt</PaddingTop>
                <PaddingBottom>2pt</PaddingBottom>
                <Border>
                  <Style>None</Style>
                </Border>
              </Style>
              <CanGrow>true</CanGrow>
              <KeepTogether>true</KeepTogether>
              <Paragraphs>
                <Paragraph>
                  <TextRuns>
                    <TextRun>
                      <Value>Sales analysis report</Value>
                      <Style>
                        <FontSize>0.66500cm</FontSize>
                        <Color>black</Color>
                      </Style>
                    </TextRun>
                  </TextRuns>
                  <Style>
                    <TextAlign>Right</TextAlign>
                  </Style>
                </Paragraph>
              </Paragraphs>
            </Textbox>
            <Line Name="Line1">
              <Left>0.05259cm</Left>
              <Top>1.61396cm</Top>
              <Height>0cm</Height>
              <Width>20.87563cm</Width>
              <Style>
                <Border>
                  <Style>Solid</Style>
                </Border>
              </Style>
            </Line>
          </ReportItems>
          <Style>
            <Border>
              <Style>None</Style>
            </Border>
          </Style>
        </PageHeader>
        <PageFooter>
          <Height>1.85209cm</Height>
          <PrintOnFirstPage>true</PrintOnFirstPage>
          <PrintOnLastPage>true</PrintOnLastPage>
          <Style>
            <FontSize>0.35278cm</FontSize>
          </Style>
        </PageFooter>
        <LeftMargin>2.54cm</LeftMargin>
        <RightMargin>2.54cm</RightMargin>
        <TopMargin>2.54cm</TopMargin>
        <BottomMargin>2.54cm</BottomMargin>
        <ColumnSpacing>1.27cm</ColumnSpacing>
        <Style>
          <FontSize>0.35278cm</FontSize>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Page>
    </ReportSection>
  </ReportSections>
  <DataSources>
    <DataSource Name="CustomerDB">
      <rd:SecurityType>None</rd:SecurityType>
      <ConnectionProperties>
        <DataProvider>SQL</DataProvider>
        <ConnectString>Data Source=172.21.10.79;Initial Catalog=RetailCloudNumbering;User Id=sa;Password=upitec</ConnectString>
      </ConnectionProperties>
    </DataSource>
  </DataSources>
  <DataSets>
    <DataSet Name="CompanyList">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT 
[dbo].[Company].[ID],
[dbo].[Company].[DisplayName] 
FROM [dbo].[Company] WHERE [dbo].[Company].[IsDeleted] = ''N'');</CommandText>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="StoreList">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[Store].[ID], [dbo].[Store].[DisplayName] FROM [dbo].[Store] 
WHERE [dbo].[Store].[IsDeleted] = ''N'' AND [dbo].[Store].[CompanyID] = @Company);</CommandText>
        <QueryParameters>
          <QueryParameter Name="@Company">
            <Value>=Parameters!Company.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="PosList">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT NULL AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[POS].[ID], [dbo].[POS].[DisplayName] FROM [dbo].[POS] 
LEFT JOIN [dbo].[StoreDepartment] ON [dbo].[StoreDepartment].[ID] = [dbo].[POS].[StoreDepartmentID]
WHERE [dbo].[POS].[IsDeleted] = ''N'' AND [dbo].[StoreDepartment].[StoreID] = @Store)</CommandText>
        <QueryParameters>
          <QueryParameter Name="@Store">
            <Value>=Parameters!Store.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ItemHierarchy1List">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemHierarchy1].[ID], [dbo].[ItemHierarchy1].[DisplayName] FROM [dbo].[ItemHierarchy1] 
WHERE [dbo].[ItemHierarchy1].[IsDeleted] = ''N'')</CommandText>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ItemHierarchy2List">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemHierarchy2].[ID], [dbo].[ItemHierarchy2].[DisplayName] FROM [dbo].[ItemHierarchy2] 
WHERE [dbo].[ItemHierarchy2].[IsDeleted] = ''N'' AND [dbo].[ItemHierarchy2].[ItemHierarchy1ID] = @ItemHierarchy1)</CommandText>
        <QueryParameters>
          <QueryParameter Name="@ItemHierarchy1">
            <Value>=Parameters!ItemHierarchy1.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ItemHierarchy3List">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemHierarchy3].[ID], [dbo].[ItemHierarchy3].[DisplayName] FROM [dbo].[ItemHierarchy3] 
WHERE [dbo].[ItemHierarchy3].[IsDeleted] = ''N'' AND [dbo].[ItemHierarchy3].[ItemHierarchy2ID] = @ItemHierarchy2)</CommandText>
        <QueryParameters>
          <QueryParameter Name="@ItemHierarchy2">
            <Value>=Parameters!ItemHierarchy2.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ItemHierarchy4List">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemHierarchy4].[ID], [dbo].[ItemHierarchy4].[DisplayName] FROM [dbo].[ItemHierarchy4] 
WHERE [dbo].[ItemHierarchy4].[IsDeleted] = ''N'' AND [dbo].[ItemHierarchy4].[ItemHierarchy3ID] = @ItemHierarchy3)</CommandText>
        <QueryParameters>
          <QueryParameter Name="@ItemHierarchy3">
            <Value>=Parameters!ItemHierarchy3.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ItemHierarchy5List">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT NULL AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemHierarchy5].[ID], [dbo].[ItemHierarchy5].[DisplayName] FROM [dbo].[ItemHierarchy5] 
WHERE [dbo].[ItemHierarchy5].[IsDeleted] = ''N'' AND [dbo].[ItemHierarchy5].[ItemHierarchy4ID] = @ItemHierarchy4)</CommandText>
        <QueryParameters>
          <QueryParameter Name="@ItemHierarchy4">
            <Value>=Parameters!ItemHierarchy4.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="BrandList">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT NULL AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemBrand].[ID], [dbo].[ItemBrand].[DisplayName] FROM [dbo].[ItemBrand] 
WHERE [dbo].[ItemBrand].[IsDeleted] = ''N'')</CommandText>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ManufactureList">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT NULL AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[Manufacture].[ID], [dbo].[Manufacture].[DisplayName] 
FROM [dbo].[Manufacture] WHERE [dbo].[Manufacture].[IsDeleted] = ''N'')</CommandText>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="PartnerGroup">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT NULL AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[PartnerGroup].[ID], [dbo].[PartnerGroup].[DisplayName] FROM [dbo].[PartnerGroup] 
WHERE [dbo].[PartnerGroup].[IsDeleted] = ''N'')</CommandText>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="TransactionItems">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>DECLARE @FromValue datetime = @From;
DECLARE @ToValue datetime = @To;
DECLARE @CompanyValue int = @Company;
DECLARE @StoreValue int = @Store;
DECLARE @POSValue int = @POS;
DECLARE @ItemHierarchy1Value int = @ItemHierarchy1;
DECLARE @ItemHierarchy2Value int = @ItemHierarchy2;
DECLARE @ItemHierarchy3Value int = @ItemHierarchy3;
DECLARE @ItemHierarchy4Value int = @ItemHierarchy4;
DECLARE @ItemHierarchy5Value int = @ItemHierarchy5;
DECLARE @ManufactureValue int = @Manufacture;
DECLARE @PartnerGroupValue int = @PartnerGroup;
DECLARE @PartnerCodeValue nvarchar = @PartnerCode;
DECLARE @ItemCodeValue nvarchar = @ItemCode;

SELECT 
	[dbo].[TransactionItem].[ID],
	[dbo].[Company].[DisplayName] AS CompanyName,
	[dbo].[Store].[DisplayName] AS StoreName,
	[dbo].[Transaction].[TransactionDate] AS Date,
	[dbo].[Item].[ShortDisplayName] AS ItemName,
	[dbo].[Item].[Code] AS ItemCode,
	[dbo].[ItemHierarchy1].[DisplayName] AS ItemHierarchy1Name,
	[dbo].[ItemHierarchy2].[DisplayName] AS ItemHierarchy2Name,
	[dbo].[ItemHierarchy3].[DisplayName] AS ItemHierarchy3Name,
	[dbo].[ItemHierarchy4].[DisplayName] AS ItemHierarchy4Name,
	[dbo].[ItemHierarchy5].[DisplayName] AS ItemHierarchy5Name,
	[dbo].[ItemBrand].[DisplayName] AS BrandName,
	[dbo].[Manufacture].[DisplayName] AS ManufactureName,
	[dbo].[Partner].[DisplayName] AS PartnerName,
	[dbo].[PartnerGroup].[DisplayName] AS PartnerGroupName,
	[dbo].[TransactionItem].[Quantity] AS Quantity,
	([dbo].[TransactionItem].[Price] - [dbo].[TransactionItem].[Discount]) AS PriceAfterDiscount,
	([dbo].[TransactionItem].[Price] - [dbo].[TransactionItem].[Discount]) * [dbo].[TransactionItem].[Quantity] AS Amount
FROM [dbo].[TransactionItem] 
INNER JOIN [dbo].[Transaction] ON [dbo].[TransactionItem].[TransactionID] = [dbo].[Transaction].[ID]
INNER JOIN [dbo].[Item] ON [dbo].[TransactionItem].[ItemID] = [dbo].[Item].[ID]
LEFT JOIN [dbo].[Location] ON [dbo].[Transaction].[LocationID] = [dbo].[Location].[ID]
LEFT JOIN [dbo].[Company] ON [dbo].[Location].[CompanyID] = [dbo].[Company].[ID]
LEFT JOIN [dbo].[Store] ON [dbo].[Location].[StoreID] = [dbo].[Store].[ID]
LEFT JOIN [dbo].[POS] ON [dbo].[Location].[PosID] = [dbo].[POS].[ID]
LEFT JOIN [dbo].[ItemHierarchy1] ON [dbo].[Item].[ItemHierarchy1ID] = [dbo].[ItemHierarchy1].[ID]
LEFT JOIN [dbo].[ItemHierarchy2] ON [dbo].[Item].[ItemHierarchy1ID] = [dbo].[ItemHierarchy1].[ID]
LEFT JOIN [dbo].[ItemHierarchy3] ON [dbo].[Item].[ItemHierarchy2ID] = [dbo].[ItemHierarchy2].[ID]
LEFT JOIN [dbo].[ItemHierarchy4] ON [dbo].[Item].[ItemHierarchy3ID] = [dbo].[ItemHierarchy3].[ID]
LEFT JOIN [dbo].[ItemHierarchy5] ON [dbo].[Item].[ItemHierarchy4ID] = [dbo].[ItemHierarchy4].[ID]
LEFT JOIN [dbo].[ItemBrand] ON [dbo].[ItemBrand].[ID] = [dbo].[Item].[ItemBrandID]
LEFT JOIN [dbo].[Manufacture] ON [dbo].[Manufacture].[ID] = [dbo].[Item].[ManufactureID]
LEFT JOIN [dbo].[Partner] ON [dbo].[Partner].[ID] = [dbo].[Transaction].[PartnerID]
LEFT JOIN [dbo].[PartnerGroup] ON [dbo].[PartnerGroup].[ID] = [dbo].[Transaction].[PartnerGroupID]
WHERE [dbo].[Transaction].[TransactionDate] &gt;= @FromValue
AND [dbo].[Transaction].[TransactionDate] &lt;= @ToValue
AND [dbo].[Company].[ID] = IIF(IsNull(@CompanyValue, '''') = '''', [dbo].[Company].[ID], @CompanyValue)
AND [dbo].[Store].[ID] = IIF(IsNull(@StoreValue, '''') = '''', [dbo].[Store].[ID], @StoreValue)
AND [dbo].[POS].[ID] = IIF(IsNull(@POSValue, '''') = '''', [dbo].[POS].[ID], @POSValue)
AND [dbo].[Manufacture].[ID] = IIF(IsNull(@ManufactureValue, '''') = '''', [dbo].[Manufacture].[ID], @ManufactureValue)
AND [dbo].[PartnerGroup].[ID] = IIF(IsNull(@PartnerGroupValue, '''') = '''', [dbo].[PartnerGroup].[ID], @PartnerGroupValue)
AND ([dbo].[ItemHierarchy1].[ID] = IIF(IsNull(@ItemHierarchy1Value, '''') = '''', [dbo].[ItemHierarchy1].[ID], @ItemHierarchy1Value)
OR [dbo].[ItemHierarchy1].[ID] IS NULL AND IsNull(@ItemHierarchy1Value, '''') = '''')
AND ([dbo].[ItemHierarchy2].[ID] = IIF(IsNull(@ItemHierarchy2Value, '''') = '''', [dbo].[ItemHierarchy2].[ID], @ItemHierarchy2Value)
OR [dbo].[ItemHierarchy2].[ID] IS NULL AND IsNull(@ItemHierarchy2Value, '''') = '''')
AND ([dbo].[ItemHierarchy3].[ID] = IIF(IsNull(@ItemHierarchy3Value, '''') = '''', [dbo].[ItemHierarchy3].[ID], @ItemHierarchy3Value)
OR [dbo].[ItemHierarchy3].[ID] IS NULL AND IsNull(@ItemHierarchy3Value, '''') = '''')
AND ([dbo].[ItemHierarchy4].[ID] = IIF(IsNull(@ItemHierarchy4Value, '''') = '''', [dbo].[ItemHierarchy4].[ID], @ItemHierarchy4Value) 
OR [dbo].[ItemHierarchy4].[ID] IS NULL AND IsNull(@ItemHierarchy4Value, '''') = '''')
AND ([dbo].[ItemHierarchy5].[ID] = IIF(IsNull(@ItemHierarchy5Value, '''') = '''', [dbo].[ItemHierarchy5].[ID], @ItemHierarchy5Value)
OR [dbo].[ItemHierarchy5].[ID] IS NULL AND IsNull(@ItemHierarchy5Value, '''') = '''')
AND [dbo].[Item].[Code] = IIF(IsNull(@ItemCodeValue, '''') = '''', [dbo].[Item].[Code], @ItemCodeValue)
AND [dbo].[Partner].[PartnerCode] = IIF(IsNull(@PartnerCodeValue, '''') = '''', [dbo].[Partner].[PartnerCode], @PartnerCodeValue)
;</CommandText>
        <QueryParameters>
          <QueryParameter Name="@From">
            <Value>=Parameters!From.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@To">
            <Value>=Parameters!To.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@Company">
            <Value>=Parameters!Company.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@Store">
            <Value>=Parameters!Store.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@POS">
            <Value>=Parameters!POS.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemHierarchy1">
            <Value>=Parameters!ItemHierarchy1.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemHierarchy2">
            <Value>=Parameters!ItemHierarchy2.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemHierarchy3">
            <Value>=Parameters!ItemHierarchy3.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemHierarchy4">
            <Value>=Parameters!ItemHierarchy4.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemHierarchy5">
            <Value>=Parameters!ItemHierarchy5.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@Manufacture">
            <Value>=Parameters!Manufacture.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@PartnerGroup">
            <Value>=Parameters!PartnerGroup.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@PartnerCode">
            <Value>=Parameters!PartnerCode.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemCode">
            <Value>=Parameters!ItemCode.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="CompanyName">
          <DataField>CompanyName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="StoreName">
          <DataField>StoreName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="Date">
          <DataField>Date</DataField>
          <rd:TypeName>System.DateTimeOffset</rd:TypeName>
        </Field>
        <Field Name="ItemName">
          <DataField>ItemName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemCode">
          <DataField>ItemCode</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemHierarchy1Name">
          <DataField>ItemHierarchy1Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemHierarchy2Name">
          <DataField>ItemHierarchy2Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemHierarchy3Name">
          <DataField>ItemHierarchy3Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemHierarchy4Name">
          <DataField>ItemHierarchy4Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemHierarchy5Name">
          <DataField>ItemHierarchy5Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="BrandName">
          <DataField>BrandName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ManufactureName">
          <DataField>ManufactureName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="PartnerName">
          <DataField>PartnerName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="PartnerGroupName">
          <DataField>PartnerGroupName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="Quantity">
          <DataField>Quantity</DataField>
          <rd:TypeName>System.Decimal</rd:TypeName>
        </Field>
        <Field Name="PriceAfterDiscount">
          <DataField>PriceAfterDiscount</DataField>
          <rd:TypeName>System.Decimal</rd:TypeName>
        </Field>
        <Field Name="Amount">
          <DataField>Amount</DataField>
          <rd:TypeName>System.Decimal</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
  </DataSets>
  <ReportParameters>
    <ReportParameter Name="GroupBy">
      <DataType>String</DataType>
      <Prompt>Group by</Prompt>
      <DefaultValue>
        <Values>
          <Value>CompanyName</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <ParameterValues>
          <ParameterValue>
            <Value>CompanyName</Value>
            <Label>Company</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemName</Value>
            <Label>Item</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>StoreName</Value>
            <Label>Store</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>Date</Value>
            <Label>Date</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemHierarchy1Name</Value>
            <Label>ItemHierarchy1</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemHierarchy2Name</Value>
            <Label>ItemHierarchy2</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemHierarchy3Name</Value>
            <Label>ItemHierarchy3</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemHierarchy4Name</Value>
            <Label>ItemHierarchy4</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemHierarchy5Name</Value>
            <Label>ItemHierarchy5</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>BrandName</Value>
            <Label>Brand</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ManufactureName</Value>
            <Label>Manufacture</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>CollectionName</Value>
            <Label>Collection</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>PartnerName</Value>
            <Label>Partner</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>PartnerGroupName</Value>
            <Label>PartnerGroup</Label>
          </ParameterValue>
        </ParameterValues>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="From">
      <DataType>DateTime</DataType>
      <Prompt>From</Prompt>
      <DefaultValue>
        <Values>
          <Value>1/9/2021 12:00 AM</Value>
        </Values>
      </DefaultValue>
    </ReportParameter>
    <ReportParameter Name="To">
      <DataType>DateTime</DataType>
      <Prompt>To</Prompt>
      <DefaultValue>
        <Values>
          <Value>5/5/2022 12:00:00 AM</Value>
        </Values>
      </DefaultValue>
    </ReportParameter>
    <ReportParameter Name="Company">
      <DataType>Integer</DataType>
      <Prompt>Company</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>CompanyList</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="Store">
      <DataType>Integer</DataType>
      <Prompt>Store</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>StoreList</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="POS">
      <DataType>Integer</DataType>
      <Prompt>POS</Prompt>
      <Nullable>true</Nullable>
      <ValidValues>
        <DataSetReference>
          <DataSetName>PosList</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemHierarchy1">
      <DataType>Integer</DataType>
      <Prompt>ItemHierarchy1</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ItemHierarchy1List</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemHierarchy2">
      <DataType>Integer</DataType>
      <Prompt>ItemHierarchy2</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ItemHierarchy2List</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemHierarchy3">
      <DataType>Integer</DataType>
      <Prompt>ItemHierarchy3</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ItemHierarchy3List</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemHierarchy4">
      <DataType>Integer</DataType>
      <Prompt>ItemHierarchy4</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ItemHierarchy4List</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemHierarchy5">
      <DataType>Integer</DataType>
      <Prompt>ItemHierarchy5</Prompt>
      <Nullable>true</Nullable>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ItemHierarchy5List</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="Manufacture">
      <DataType>Integer</DataType>
      <Prompt>Manufacture</Prompt>
      <Nullable>true</Nullable>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ManufactureList</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="PartnerCode">
      <DataType>String</DataType>
      <Prompt>Partner code</Prompt>
      <AllowBlank>true</AllowBlank>
    </ReportParameter>
    <ReportParameter Name="PartnerGroup">
      <DataType>Integer</DataType>
      <Prompt>Partner group</Prompt>
      <Nullable>true</Nullable>
      <ValidValues>
        <DataSetReference>
          <DataSetName>PartnerGroup</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemCode">
      <DataType>String</DataType>
      <Prompt>Item code</Prompt>
      <AllowBlank>true</AllowBlank>
    </ReportParameter>
    <ReportParameter Name="Brand">
      <DataType>Integer</DataType>
      <Prompt>Brand</Prompt>
      <Nullable>true</Nullable>
      <ValidValues>
        <DataSetReference>
          <DataSetName>BrandList</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
  </ReportParameters>
  <ReportParametersLayout>
    <GridLayoutDefinition>
      <NumberOfColumns>4</NumberOfColumns>
      <NumberOfRows>6</NumberOfRows>
      <CellDefinitions>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>0</RowIndex>
          <ParameterName>GroupBy</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>1</ColumnIndex>
          <RowIndex>0</RowIndex>
          <ParameterName>From</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>2</ColumnIndex>
          <RowIndex>0</RowIndex>
          <ParameterName>To</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>1</RowIndex>
          <ParameterName>Company</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>1</ColumnIndex>
          <RowIndex>1</RowIndex>
          <ParameterName>Store</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>2</ColumnIndex>
          <RowIndex>1</RowIndex>
          <ParameterName>POS</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>2</RowIndex>
          <ParameterName>ItemHierarchy1</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>1</ColumnIndex>
          <RowIndex>2</RowIndex>
          <ParameterName>ItemHierarchy2</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>2</ColumnIndex>
          <RowIndex>2</RowIndex>
          <ParameterName>ItemHierarchy3</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>3</RowIndex>
          <ParameterName>ItemHierarchy4</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>1</ColumnIndex>
          <RowIndex>3</RowIndex>
          <ParameterName>ItemHierarchy5</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>2</ColumnIndex>
          <RowIndex>3</RowIndex>
          <ParameterName>Manufacture</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>4</RowIndex>
          <ParameterName>PartnerCode</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>1</ColumnIndex>
          <RowIndex>4</RowIndex>
          <ParameterName>PartnerGroup</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>2</ColumnIndex>
          <RowIndex>4</RowIndex>
          <ParameterName>ItemCode</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>5</RowIndex>
          <ParameterName>Brand</ParameterName>
        </CellDefinition>
      </CellDefinitions>
    </GridLayoutDefinition>
  </ReportParametersLayout>
  <CustomProperties>
    <CustomProperty>
      <Name>EnableFilterSearch</Name>
      <Value>true</Value>
    </CustomProperty>
    <CustomProperty>
      <Name>PopupHeight</Name>
      <Value>300px</Value>
    </CustomProperty>
  </CustomProperties>
  <Language>en-GB</Language>
  <rd:ReportUnitType>Cm</rd:ReportUnitType>
  <rd:PageUnit />
  <df:DefaultFontFamily>Segoe UI</df:DefaultFontFamily>
</Report>', 1, NULL, '2022-07-06 13:10:18.4133333 +00:00', 19, N'N', 'f498acdd-81f0-4da3-847b-c31a727cc3af', 1, NULL, 2)
INSERT INTO [dbo].[WebReport] ([ID], [Name], [Code], [Rdl], [WebReportCategoryID], [WebReportCategorySubID], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [LanguageID]) VALUES (10020, N'license', N'license', N'<?xml version="1.0" encoding="utf-8"?>
<Report xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner" xmlns:df="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition/defaultfontfamily" xmlns="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition">
  <ReportSections>
    <ReportSection>
      <Body>
        <Height>3.125in</Height>
        <ReportItems>
          <Textbox Name="TextBox1">
            <Left>111pt</Left>
            <Top>18pt</Top>
            <Height>37.5pt</Height>
            <Width>150pt</Width>
            <Style>
              <FontFamily>Arial</FontFamily>
              <PaddingLeft>2pt</PaddingLeft>
              <PaddingRight>2pt</PaddingRight>
              <PaddingTop>2pt</PaddingTop>
              <PaddingBottom>2pt</PaddingBottom>
              <Border>
                <Style>None</Style>
              </Border>
            </Style>
            <CanGrow>true</CanGrow>
            <KeepTogether>true</KeepTogether>
            <Paragraphs>
              <Paragraph>
                <TextRuns>
                  <TextRun>
                    <Value>test</Value>
                    <Style>
                      <FontFamily>Arial</FontFamily>
                      <Color>Black</Color>
                    </Style>
                  </TextRun>
                </TextRuns>
                <Style>
                  <FontFamily>Arial</FontFamily>
                </Style>
              </Paragraph>
            </Paragraphs>
          </Textbox>
        </ReportItems>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Body>
      <Width>6.5in</Width>
      <Page>
        <PageFooter>
          <Height>0.72917in</Height>
          <PrintOnFirstPage>true</PrintOnFirstPage>
          <PrintOnLastPage>true</PrintOnLastPage>
          <Style>
            <Border>
              <Style>None</Style>
            </Border>
          </Style>
        </PageFooter>
        <LeftMargin>1in</LeftMargin>
        <RightMargin>1in</RightMargin>
        <TopMargin>1in</TopMargin>
        <BottomMargin>1in</BottomMargin>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Page>
    </ReportSection>
  </ReportSections>
  <DataSources>
    <DataSource Name="CustomerDB">
      <rd:SecurityType>None</rd:SecurityType>
      <ConnectionProperties>
        <DataProvider>SQL</DataProvider>
        <ConnectString>Data Source=172.21.10.79;Initial Catalog=RetailCloudNew2;User Id=sa;Password=upitec</ConnectString>
      </ConnectionProperties>
    </DataSource>
  </DataSources>
  <ReportParametersLayout>
    <GridLayoutDefinition>
      <NumberOfColumns>4</NumberOfColumns>
      <NumberOfRows>2</NumberOfRows>
    </GridLayoutDefinition>
  </ReportParametersLayout>
  <rd:ReportUnitType>Inch</rd:ReportUnitType>
  <rd:PageUnit>Px</rd:PageUnit>
  <df:DefaultFontFamily>Segoe UI</df:DefaultFontFamily>
</Report>', 1, NULL, '2022-07-06 12:34:00.5828382 +03:00', 1, N'N', 'bc25ceed-624d-4b0d-aa5c-acb5abe35a61', 1, NULL, 2)
INSERT INTO [dbo].[WebReport] ([ID], [Name], [Code], [Rdl], [WebReportCategoryID], [WebReportCategorySubID], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [LanguageID]) VALUES (10026, N'test-SIR-7335', N'test-SIR-7335', N'<?xml version="1.0" encoding="utf-8"?>
<Report xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner" xmlns:df="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition/defaultfontfamily" xmlns="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition">
  <ReportSections>
    <ReportSection>
      <Body>
        <Height>3.01625cm</Height>
        <ReportItems>
          <Tablix Name="Tablix1">
            <Left>0.26293cm</Left>
            <Top>0.23813cm</Top>
            <Height>2.40771cm</Height>
            <Width>20.87629cm</Width>
            <Style>
              <FontSize>0.35278cm</FontSize>
              <Border>
                <Style>None</Style>
              </Border>
            </Style>
            <DataSetName>TransactionItems</DataSetName>
            <TablixBody>
              <TablixColumns>
                <TablixColumn>
                  <Width>4.63021cm</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>4.57564cm</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>2.75167cm</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>1.74625cm</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>2.54165cm</Width>
                </TablixColumn>
              </TablixColumns>
              <TablixRows>
                <TablixRow>
                  <Height>1.13771cm</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox12">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>1.13771cm</Height>
                          <Width>4.63021cm</Width>
                          <Style>
                            <BackgroundColor>#676767</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>#ffffff</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Item code</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>#f5ea14</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox2">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>1.13771cm</Height>
                          <Width>4.57565cm</Width>
                          <Style>
                            <BackgroundColor>#676767</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>#ffffff</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Item name</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>#f5ea14</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox3">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>1.13771cm</Height>
                          <Width>2.75167cm</Width>
                          <Style>
                            <BackgroundColor>#676767</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>#ffffff</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Price after discount</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>#f5ea14</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox7">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>1.13771cm</Height>
                          <Width>1.74625cm</Width>
                          <Style>
                            <BackgroundColor>#676767</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>#ffffff</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Quantity</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>#f5ea14</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox9">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>1.13771cm</Height>
                          <Width>2.54165cm</Width>
                          <Style>
                            <BackgroundColor>#676767</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>#ffffff</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Amount</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>#f5ea14</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
                <TablixRow>
                  <Height>0.63500cm</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox4">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>4.63021cm</Width>
                          <Style>
                            <BackgroundColor>=IIf(RowNumber("Tablix1") Mod 2=0,"#f2f0f0","Transparent")</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <Visibility>
                            <Hidden>False</Hidden>
                          </Visibility>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!ItemCode.Value</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox5">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>4.57565cm</Width>
                          <Style>
                            <BackgroundColor>=IIf(RowNumber("Tablix1") Mod 2=0,"#f2f0f0","Transparent")</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!ItemName.Value</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox6">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>2.75167cm</Width>
                          <Style>
                            <BackgroundColor>=IIf(RowNumber("Tablix1") Mod 2=0,"#f2f0f0","Transparent")</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!PriceAfterDiscount.Value</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <Format>0.00;(0.00)</Format>
                                    <rd:FormatType>
                                      <rd:Format>Number</rd:Format>
                                      <rd:Representation>None</rd:Representation>
                                      <rd:NegativeValue>(12345)</rd:NegativeValue>
                                    </rd:FormatType>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox8">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>1.74625cm</Width>
                          <Style>
                            <BackgroundColor>=IIf(RowNumber("Tablix1") Mod 2=0,"#f2f0f0","Transparent")</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Quantity.Value</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <Format>0;(0)</Format>
                                    <rd:FormatType>
                                      <rd:Format>Number</rd:Format>
                                      <rd:Representation>None</rd:Representation>
                                      <rd:NegativeValue>(12345)</rd:NegativeValue>
                                    </rd:FormatType>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox10">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>2.54165cm</Width>
                          <Style>
                            <BackgroundColor>=IIf(RowNumber("Tablix1") Mod 2=0,"#f2f0f0","Transparent")</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <VerticalAlign>Middle</VerticalAlign>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Amount.Value</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <Format>0.00;(0.00)</Format>
                                    <rd:FormatType>
                                      <rd:Format>Number</rd:Format>
                                      <rd:Representation>None</rd:Representation>
                                      <rd:NegativeValue>(12345)</rd:NegativeValue>
                                    </rd:FormatType>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
                <TablixRow>
                  <Height>0.63500cm</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox21">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>4.63021cm</Width>
                          <Style>
                            <BackgroundColor>#b3b2b3</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox22">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>4.57565cm</Width>
                          <Style>
                            <BackgroundColor>#b3b2b3</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox26">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>2.75167cm</Width>
                          <Style>
                            <BackgroundColor>#b3b2b3</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox24">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>1.74625cm</Width>
                          <Style>
                            <BackgroundColor>#b3b2b3</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Sum(Fields!Quantity.Value)</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Format>0;(0)</Format>
                                    <rd:FormatType>
                                      <rd:Format>Number</rd:Format>
                                      <rd:Representation>None</rd:Representation>
                                      <rd:NegativeValue>(12345)</rd:NegativeValue>
                                    </rd:FormatType>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox25">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>0.63500cm</Height>
                          <Width>2.54165cm</Width>
                          <Style>
                            <BackgroundColor>#b3b2b3</BackgroundColor>
                            <FontSize>0.35278cm</FontSize>
                            <PaddingLeft>0.07056cm</PaddingLeft>
                            <PaddingRight>0.07056cm</PaddingRight>
                            <PaddingTop>0.07056cm</PaddingTop>
                            <PaddingBottom>0.07056cm</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>None</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Sum(Fields!Amount.Value)</Value>
                                  <Style>
                                    <FontSize>0.35278cm</FontSize>
                                    <FontWeight>Bold</FontWeight>
                                    <Format>0.00;(0.00)</Format>
                                    <rd:FormatType>
                                      <rd:Format>Number</rd:Format>
                                      <rd:Representation>None</rd:Representation>
                                      <rd:NegativeValue>(12345)</rd:NegativeValue>
                                    </rd:FormatType>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontSize>0.35278cm</FontSize>
                                <TextAlign>Center</TextAlign>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
              </TablixRows>
            </TablixBody>
            <TablixColumnHierarchy>
              <TablixMembers>
                <TablixMember />
                <TablixMember />
                <TablixMember />
                <TablixMember />
                <TablixMember />
              </TablixMembers>
            </TablixColumnHierarchy>
            <TablixRowHierarchy>
              <TablixMembers>
                <TablixMember>
                  <TablixHeader>
                    <Size>4.63021cm</Size>
                    <CellContents>
                      <Textbox Name="TextBox13">
                        <Left>0in</Left>
                        <Top>0in</Top>
                        <Height>1.13771cm</Height>
                        <Width>4.63021cm</Width>
                        <Style>
                          <BackgroundColor>#676767</BackgroundColor>
                          <FontSize>0.35278cm</FontSize>
                          <VerticalAlign>Middle</VerticalAlign>
                          <PaddingLeft>0.07056cm</PaddingLeft>
                          <PaddingRight>0.07056cm</PaddingRight>
                          <PaddingTop>0.07056cm</PaddingTop>
                          <PaddingBottom>0.07056cm</PaddingBottom>
                          <Border>
                            <Color>#ffffff</Color>
                            <Style>None</Style>
                          </Border>
                        </Style>
                        <CanGrow>true</CanGrow>
                        <KeepTogether>true</KeepTogether>
                        <Paragraphs>
                          <Paragraph>
                            <TextRuns>
                              <TextRun>
                                <Value>= "Group by: " &amp; Parameters!GroupBy.Value</Value>
                                <Style>
                                  <FontSize>0.35278cm</FontSize>
                                  <FontWeight>Bold</FontWeight>
                                  <Color>#f5ea14</Color>
                                </Style>
                              </TextRun>
                            </TextRuns>
                            <Style>
                              <FontSize>0.35278cm</FontSize>
                            </Style>
                          </Paragraph>
                        </Paragraphs>
                      </Textbox>
                    </CellContents>
                  </TablixHeader>
                  <TablixMembers>
                    <TablixMember />
                  </TablixMembers>
                  <KeepWithGroup>After</KeepWithGroup>
                  <RepeatOnNewPage>true</RepeatOnNewPage>
                </TablixMember>
                <TablixMember>
                  <Group Name="Group2">
                    <GroupExpressions>
                      <GroupExpression>=Fields(Parameters!GroupBy.Value).Value</GroupExpression>
                    </GroupExpressions>
                  </Group>
                  <SortExpressions>
                    <SortExpression>
                      <Value>=Fields(Parameters!GroupBy.Value).Value</Value>
                      <Direction>Ascending</Direction>
                    </SortExpression>
                  </SortExpressions>
                  <TablixHeader>
                    <Size>4.63021cm</Size>
                    <CellContents>
                      <Textbox Name="Group21">
                        <Left>0in</Left>
                        <Top>0in</Top>
                        <Height>0.63500cm</Height>
                        <Width>4.63021cm</Width>
                        <Style>
                          <BackgroundColor>#b3b2b3</BackgroundColor>
                          <FontSize>0.35278cm</FontSize>
                          <VerticalAlign>Top</VerticalAlign>
                          <PaddingLeft>0.07056cm</PaddingLeft>
                          <PaddingRight>0.07056cm</PaddingRight>
                          <PaddingTop>0.07056cm</PaddingTop>
                          <PaddingBottom>0.07056cm</PaddingBottom>
                          <Border>
                            <Color>LightGrey</Color>
                            <Style>None</Style>
                          </Border>
                        </Style>
                        <CanGrow>true</CanGrow>
                        <KeepTogether>true</KeepTogether>
                        <Paragraphs>
                          <Paragraph>
                            <TextRuns>
                              <TextRun>
                                <Value>=Fields(Parameters!GroupBy.Value).Value</Value>
                                <Style>
                                  <FontSize>0.35278cm</FontSize>
                                  <Color>black</Color>
                                </Style>
                              </TextRun>
                            </TextRuns>
                            <Style>
                              <FontSize>0.35278cm</FontSize>
                            </Style>
                          </Paragraph>
                        </Paragraphs>
                        <ToggleImage>
                          <InitialState>false</InitialState>
                        </ToggleImage>
                      </Textbox>
                    </CellContents>
                  </TablixHeader>
                  <TablixMembers>
                    <TablixMember>
                      <Group Name="Details" />
                    </TablixMember>
                  </TablixMembers>
                </TablixMember>
                <TablixMember>
                  <TablixHeader>
                    <Size>4.63021cm</Size>
                    <CellContents>
                      <Textbox Name="TextBox20">
                        <Left>0in</Left>
                        <Top>0in</Top>
                        <Height>0.63500cm</Height>
                        <Width>4.63021cm</Width>
                        <Style>
                          <BackgroundColor>#b3b2b3</BackgroundColor>
                          <FontSize>0.35278cm</FontSize>
                          <PaddingLeft>0.07056cm</PaddingLeft>
                          <PaddingRight>0.07056cm</PaddingRight>
                          <PaddingTop>0.07056cm</PaddingTop>
                          <PaddingBottom>0.07056cm</PaddingBottom>
                          <Border>
                            <Color>LightGrey</Color>
                            <Style>None</Style>
                          </Border>
                        </Style>
                        <CanGrow>true</CanGrow>
                        <KeepTogether>true</KeepTogether>
                        <Paragraphs>
                          <Paragraph>
                            <TextRuns>
                              <TextRun>
                                <Value>Total</Value>
                                <Style>
                                  <FontSize>0.35278cm</FontSize>
                                  <FontWeight>Bold</FontWeight>
                                  <Color>black</Color>
                                </Style>
                              </TextRun>
                            </TextRuns>
                            <Style>
                              <FontSize>0.35278cm</FontSize>
                            </Style>
                          </Paragraph>
                        </Paragraphs>
                      </Textbox>
                    </CellContents>
                  </TablixHeader>
                  <KeepWithGroup>Before</KeepWithGroup>
                </TablixMember>
              </TablixMembers>
            </TablixRowHierarchy>
          </Tablix>
        </ReportItems>
        <Style>
          <FontSize>0.35278cm</FontSize>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Body>
      <Width>21.50963cm</Width>
      <Page>
        <PageHeight>21.0058cm</PageHeight>
        <PageWidth>29.6926cm</PageWidth>
        <PageHeader>
          <Height>1.77271cm</Height>
          <PrintOnFirstPage>true</PrintOnFirstPage>
          <PrintOnLastPage>true</PrintOnLastPage>
          <ReportItems>
            <Textbox Name="TextBox1">
              <Left>0.42168cm</Left>
              <Top>0.26293cm</Top>
              <Height>1.21708cm</Height>
              <Width>4.07458cm</Width>
              <Style>
                <PaddingLeft>2pt</PaddingLeft>
                <PaddingRight>2pt</PaddingRight>
                <PaddingTop>2pt</PaddingTop>
                <PaddingBottom>2pt</PaddingBottom>
                <Border>
                  <Style>None</Style>
                </Border>
              </Style>
              <CanGrow>true</CanGrow>
              <KeepTogether>true</KeepTogether>
              <Paragraphs>
                <Paragraph>
                  <TextRuns>
                    <TextRun>
                      <Value>Nayax</Value>
                      <Style>
                        <FontSize>0.74300cm</FontSize>
                        <Color>Black</Color>
                      </Style>
                    </TextRun>
                  </TextRuns>
                  <Style />
                </Paragraph>
              </Paragraphs>
            </Textbox>
            <Textbox Name="TextBox11">
              <Left>13.54601cm</Left>
              <Top>0.21167cm</Top>
              <Height>1.32292cm</Height>
              <Width>6.87884cm</Width>
              <Style>
                <PaddingLeft>2pt</PaddingLeft>
                <PaddingRight>2pt</PaddingRight>
                <PaddingTop>2pt</PaddingTop>
                <PaddingBottom>2pt</PaddingBottom>
                <Border>
                  <Style>None</Style>
                </Border>
              </Style>
              <CanGrow>true</CanGrow>
              <KeepTogether>true</KeepTogether>
              <Paragraphs>
                <Paragraph>
                  <TextRuns>
                    <TextRun>
                      <Value>Sales analysis report</Value>
                      <Style>
                        <FontSize>0.66500cm</FontSize>
                        <Color>black</Color>
                      </Style>
                    </TextRun>
                  </TextRuns>
                  <Style>
                    <TextAlign>Right</TextAlign>
                  </Style>
                </Paragraph>
              </Paragraphs>
            </Textbox>
            <Line Name="Line1">
              <Left>0.05259cm</Left>
              <Top>1.61396cm</Top>
              <Height>0cm</Height>
              <Width>20.87563cm</Width>
              <Style>
                <Border>
                  <Style>Solid</Style>
                </Border>
              </Style>
            </Line>
          </ReportItems>
          <Style>
            <Border>
              <Style>None</Style>
            </Border>
          </Style>
        </PageHeader>
        <PageFooter>
          <Height>1.85209cm</Height>
          <PrintOnFirstPage>true</PrintOnFirstPage>
          <PrintOnLastPage>true</PrintOnLastPage>
          <Style>
            <FontSize>0.35278cm</FontSize>
          </Style>
        </PageFooter>
        <LeftMargin>2.54cm</LeftMargin>
        <RightMargin>2.54cm</RightMargin>
        <TopMargin>2.54cm</TopMargin>
        <BottomMargin>2.54cm</BottomMargin>
        <ColumnSpacing>1.27cm</ColumnSpacing>
        <Style>
          <FontSize>0.35278cm</FontSize>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Page>
    </ReportSection>
  </ReportSections>
  <DataSources>
    <DataSource Name="CustomerDB">
      <rd:SecurityType>None</rd:SecurityType>
      <ConnectionProperties>
        <DataProvider>SQL</DataProvider>
        <ConnectString>Data Source=172.21.10.79,1433; Initial Catalog=RetailCloudNew2; User Id=sa; Password=upitec</ConnectString>
      </ConnectionProperties>
    </DataSource>
  </DataSources>
  <DataSets>
    <DataSet Name="CompanyList">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT 
[dbo].[Company].[ID],
[dbo].[Company].[DisplayName] 
FROM [dbo].[Company] WHERE [dbo].[Company].[IsDeleted] = ''N'');</CommandText>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="StoreList">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[Store].[ID], [dbo].[Store].[DisplayName] FROM [dbo].[Store] 
WHERE [dbo].[Store].[IsDeleted] = ''N'' AND [dbo].[Store].[CompanyID] = @Company);</CommandText>
        <QueryParameters>
          <QueryParameter Name="@Company">
            <Value>=Parameters!Company.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="PosList">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT NULL AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[POS].[ID], [dbo].[POS].[DisplayName] FROM [dbo].[POS] 
LEFT JOIN [dbo].[StoreDepartment] ON [dbo].[StoreDepartment].[ID] = [dbo].[POS].[StoreDepartmentID]
WHERE [dbo].[POS].[IsDeleted] = ''N'' AND [dbo].[StoreDepartment].[StoreID] = @Store)</CommandText>
        <QueryParameters>
          <QueryParameter Name="@Store">
            <Value>=Parameters!Store.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ItemHierarchy1List">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemHierarchy1].[ID], [dbo].[ItemHierarchy1].[DisplayName] FROM [dbo].[ItemHierarchy1] 
WHERE [dbo].[ItemHierarchy1].[IsDeleted] = ''N'')</CommandText>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ItemHierarchy2List">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemHierarchy2].[ID], [dbo].[ItemHierarchy2].[DisplayName] FROM [dbo].[ItemHierarchy2] 
WHERE [dbo].[ItemHierarchy2].[IsDeleted] = ''N'' AND [dbo].[ItemHierarchy2].[ItemHierarchy1ID] = @ItemHierarchy1)</CommandText>
        <QueryParameters>
          <QueryParameter Name="@ItemHierarchy1">
            <Value>=Parameters!ItemHierarchy1.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ItemHierarchy3List">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemHierarchy3].[ID], [dbo].[ItemHierarchy3].[DisplayName] FROM [dbo].[ItemHierarchy3] 
WHERE [dbo].[ItemHierarchy3].[IsDeleted] = ''N'' AND [dbo].[ItemHierarchy3].[ItemHierarchy2ID] = @ItemHierarchy2)</CommandText>
        <QueryParameters>
          <QueryParameter Name="@ItemHierarchy2">
            <Value>=Parameters!ItemHierarchy2.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ItemHierarchy4List">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT 0 AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemHierarchy4].[ID], [dbo].[ItemHierarchy4].[DisplayName] FROM [dbo].[ItemHierarchy4] 
WHERE [dbo].[ItemHierarchy4].[IsDeleted] = ''N'' AND [dbo].[ItemHierarchy4].[ItemHierarchy3ID] = @ItemHierarchy3)</CommandText>
        <QueryParameters>
          <QueryParameter Name="@ItemHierarchy3">
            <Value>=Parameters!ItemHierarchy3.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ItemHierarchy5List">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT NULL AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemHierarchy5].[ID], [dbo].[ItemHierarchy5].[DisplayName] FROM [dbo].[ItemHierarchy5] 
WHERE [dbo].[ItemHierarchy5].[IsDeleted] = ''N'' AND [dbo].[ItemHierarchy5].[ItemHierarchy4ID] = @ItemHierarchy4)</CommandText>
        <QueryParameters>
          <QueryParameter Name="@ItemHierarchy4">
            <Value>=Parameters!ItemHierarchy4.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="BrandList">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT NULL AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[ItemBrand].[ID], [dbo].[ItemBrand].[DisplayName] FROM [dbo].[ItemBrand] 
WHERE [dbo].[ItemBrand].[IsDeleted] = ''N'')</CommandText>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="ManufactureList">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT NULL AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[Manufacture].[ID], [dbo].[Manufacture].[DisplayName] 
FROM [dbo].[Manufacture] WHERE [dbo].[Manufacture].[IsDeleted] = ''N'')</CommandText>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="PartnerGroup">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>(SELECT NULL AS ''ID'', ''Not selected'' AS ''DisplayName'') UNION
(SELECT [dbo].[PartnerGroup].[ID], [dbo].[PartnerGroup].[DisplayName] FROM [dbo].[PartnerGroup] 
WHERE [dbo].[PartnerGroup].[IsDeleted] = ''N'')</CommandText>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="DisplayName">
          <DataField>DisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
    <DataSet Name="TransactionItems">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>DECLARE @FromValue datetime = @From;
DECLARE @ToValue datetime = @To;
DECLARE @CompanyValue int = @Company;
DECLARE @StoreValue int = @Store;
DECLARE @POSValue int = @POS;
DECLARE @ItemHierarchy1Value int = @ItemHierarchy1;
DECLARE @ItemHierarchy2Value int = @ItemHierarchy2;
DECLARE @ItemHierarchy3Value int = @ItemHierarchy3;
DECLARE @ItemHierarchy4Value int = @ItemHierarchy4;
DECLARE @ItemHierarchy5Value int = @ItemHierarchy5;
DECLARE @ManufactureValue int = @Manufacture;
DECLARE @PartnerGroupValue int = @PartnerGroup;
DECLARE @PartnerCodeValue nvarchar = @PartnerCode;
DECLARE @ItemCodeValue nvarchar = @ItemCode;

SELECT 
	[dbo].[TransactionItem].[ID],
	[dbo].[Company].[DisplayName] AS CompanyName,
	[dbo].[Store].[DisplayName] AS StoreName,
	[dbo].[Transaction].[TransactionDate] AS Date,
	[dbo].[Item].[ShortDisplayName] AS ItemName,
	[dbo].[Item].[Code] AS ItemCode,
	[dbo].[ItemHierarchy1].[DisplayName] AS ItemHierarchy1Name,
	[dbo].[ItemHierarchy2].[DisplayName] AS ItemHierarchy2Name,
	[dbo].[ItemHierarchy3].[DisplayName] AS ItemHierarchy3Name,
	[dbo].[ItemHierarchy4].[DisplayName] AS ItemHierarchy4Name,
	[dbo].[ItemHierarchy5].[DisplayName] AS ItemHierarchy5Name,
	[dbo].[ItemBrand].[DisplayName] AS BrandName,
	[dbo].[Manufacture].[DisplayName] AS ManufactureName,
	[dbo].[Partner].[DisplayName] AS PartnerName,
	[dbo].[PartnerGroup].[DisplayName] AS PartnerGroupName,
	[dbo].[TransactionItem].[Quantity] AS Quantity,
	([dbo].[TransactionItem].[Price] - [dbo].[TransactionItem].[Discount]) AS PriceAfterDiscount,
	([dbo].[TransactionItem].[Price] - [dbo].[TransactionItem].[Discount]) * [dbo].[TransactionItem].[Quantity] AS Amount
FROM [dbo].[TransactionItem] 
INNER JOIN [dbo].[Transaction] ON [dbo].[TransactionItem].[TransactionID] = [dbo].[Transaction].[ID]
INNER JOIN [dbo].[Item] ON [dbo].[TransactionItem].[ItemID] = [dbo].[Item].[ID]
LEFT JOIN [dbo].[Location] ON [dbo].[Transaction].[LocationID] = [dbo].[Location].[ID]
LEFT JOIN [dbo].[Company] ON [dbo].[Location].[CompanyID] = [dbo].[Company].[ID]
LEFT JOIN [dbo].[Store] ON [dbo].[Location].[StoreID] = [dbo].[Store].[ID]
LEFT JOIN [dbo].[POS] ON [dbo].[Location].[PosID] = [dbo].[POS].[ID]
LEFT JOIN [dbo].[ItemHierarchy1] ON [dbo].[Item].[ItemHierarchy1ID] = [dbo].[ItemHierarchy1].[ID]
LEFT JOIN [dbo].[ItemHierarchy2] ON [dbo].[Item].[ItemHierarchy1ID] = [dbo].[ItemHierarchy1].[ID]
LEFT JOIN [dbo].[ItemHierarchy3] ON [dbo].[Item].[ItemHierarchy2ID] = [dbo].[ItemHierarchy2].[ID]
LEFT JOIN [dbo].[ItemHierarchy4] ON [dbo].[Item].[ItemHierarchy3ID] = [dbo].[ItemHierarchy3].[ID]
LEFT JOIN [dbo].[ItemHierarchy5] ON [dbo].[Item].[ItemHierarchy4ID] = [dbo].[ItemHierarchy4].[ID]
LEFT JOIN [dbo].[ItemBrand] ON [dbo].[ItemBrand].[ID] = [dbo].[Item].[ItemBrandID]
LEFT JOIN [dbo].[Manufacture] ON [dbo].[Manufacture].[ID] = [dbo].[Item].[ManufactureID]
LEFT JOIN [dbo].[Partner] ON [dbo].[Partner].[ID] = [dbo].[Transaction].[PartnerID]
LEFT JOIN [dbo].[PartnerGroup] ON [dbo].[PartnerGroup].[ID] = [dbo].[Transaction].[PartnerGroupID]
WHERE [dbo].[Transaction].[TransactionDate] &gt;= @FromValue
AND [dbo].[Transaction].[TransactionDate] &lt;= @ToValue
AND [dbo].[Company].[ID] = IIF(IsNull(@CompanyValue, '''') = '''', [dbo].[Company].[ID], @CompanyValue)
AND [dbo].[Store].[ID] = IIF(IsNull(@StoreValue, '''') = '''', [dbo].[Store].[ID], @StoreValue)
AND [dbo].[POS].[ID] = IIF(IsNull(@POSValue, '''') = '''', [dbo].[POS].[ID], @POSValue)
AND [dbo].[Manufacture].[ID] = IIF(IsNull(@ManufactureValue, '''') = '''', [dbo].[Manufacture].[ID], @ManufactureValue)
AND [dbo].[PartnerGroup].[ID] = IIF(IsNull(@PartnerGroupValue, '''') = '''', [dbo].[PartnerGroup].[ID], @PartnerGroupValue)
AND ([dbo].[ItemHierarchy1].[ID] = IIF(IsNull(@ItemHierarchy1Value, '''') = '''', [dbo].[ItemHierarchy1].[ID], @ItemHierarchy1Value)
OR [dbo].[ItemHierarchy1].[ID] IS NULL AND IsNull(@ItemHierarchy1Value, '''') = '''')
AND ([dbo].[ItemHierarchy2].[ID] = IIF(IsNull(@ItemHierarchy2Value, '''') = '''', [dbo].[ItemHierarchy2].[ID], @ItemHierarchy2Value)
OR [dbo].[ItemHierarchy2].[ID] IS NULL AND IsNull(@ItemHierarchy2Value, '''') = '''')
AND ([dbo].[ItemHierarchy3].[ID] = IIF(IsNull(@ItemHierarchy3Value, '''') = '''', [dbo].[ItemHierarchy3].[ID], @ItemHierarchy3Value)
OR [dbo].[ItemHierarchy3].[ID] IS NULL AND IsNull(@ItemHierarchy3Value, '''') = '''')
AND ([dbo].[ItemHierarchy4].[ID] = IIF(IsNull(@ItemHierarchy4Value, '''') = '''', [dbo].[ItemHierarchy4].[ID], @ItemHierarchy4Value) 
OR [dbo].[ItemHierarchy4].[ID] IS NULL AND IsNull(@ItemHierarchy4Value, '''') = '''')
AND ([dbo].[ItemHierarchy5].[ID] = IIF(IsNull(@ItemHierarchy5Value, '''') = '''', [dbo].[ItemHierarchy5].[ID], @ItemHierarchy5Value)
OR [dbo].[ItemHierarchy5].[ID] IS NULL AND IsNull(@ItemHierarchy5Value, '''') = '''')
AND [dbo].[Item].[Code] = IIF(IsNull(@ItemCodeValue, '''') = '''', [dbo].[Item].[Code], @ItemCodeValue)
AND [dbo].[Partner].[PartnerCode] = IIF(IsNull(@PartnerCodeValue, '''') = '''', [dbo].[Partner].[PartnerCode], @PartnerCodeValue)
;</CommandText>
        <QueryParameters>
          <QueryParameter Name="@From">
            <Value>=Parameters!From.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@To">
            <Value>=Parameters!To.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@Company">
            <Value>=Parameters!Company.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@Store">
            <Value>=Parameters!Store.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@POS">
            <Value>=Parameters!POS.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemHierarchy1">
            <Value>=Parameters!ItemHierarchy1.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemHierarchy2">
            <Value>=Parameters!ItemHierarchy2.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemHierarchy3">
            <Value>=Parameters!ItemHierarchy3.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemHierarchy4">
            <Value>=Parameters!ItemHierarchy4.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemHierarchy5">
            <Value>=Parameters!ItemHierarchy5.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@Manufacture">
            <Value>=Parameters!Manufacture.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@PartnerGroup">
            <Value>=Parameters!PartnerGroup.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@PartnerCode">
            <Value>=Parameters!PartnerCode.Value</Value>
          </QueryParameter>
          <QueryParameter Name="@ItemCode">
            <Value>=Parameters!ItemCode.Value</Value>
          </QueryParameter>
        </QueryParameters>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="CompanyName">
          <DataField>CompanyName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="StoreName">
          <DataField>StoreName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="Date">
          <DataField>Date</DataField>
          <rd:TypeName>System.DateTimeOffset</rd:TypeName>
        </Field>
        <Field Name="ItemName">
          <DataField>ItemName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemCode">
          <DataField>ItemCode</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemHierarchy1Name">
          <DataField>ItemHierarchy1Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemHierarchy2Name">
          <DataField>ItemHierarchy2Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemHierarchy3Name">
          <DataField>ItemHierarchy3Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemHierarchy4Name">
          <DataField>ItemHierarchy4Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemHierarchy5Name">
          <DataField>ItemHierarchy5Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="BrandName">
          <DataField>BrandName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ManufactureName">
          <DataField>ManufactureName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="PartnerName">
          <DataField>PartnerName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="PartnerGroupName">
          <DataField>PartnerGroupName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="Quantity">
          <DataField>Quantity</DataField>
          <rd:TypeName>System.Decimal</rd:TypeName>
        </Field>
        <Field Name="PriceAfterDiscount">
          <DataField>PriceAfterDiscount</DataField>
          <rd:TypeName>System.Decimal</rd:TypeName>
        </Field>
        <Field Name="Amount">
          <DataField>Amount</DataField>
          <rd:TypeName>System.Decimal</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
  </DataSets>
  <ReportParameters>
    <ReportParameter Name="GroupBy">
      <DataType>String</DataType>
      <Prompt>Group by</Prompt>
      <DefaultValue>
        <Values>
          <Value>CompanyName</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <ParameterValues>
          <ParameterValue>
            <Value>CompanyName</Value>
            <Label>Company</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemName</Value>
            <Label>Item</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>StoreName</Value>
            <Label>Store</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>Date</Value>
            <Label>Date</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemHierarchy1Name</Value>
            <Label>ItemHierarchy1</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemHierarchy2Name</Value>
            <Label>ItemHierarchy2</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemHierarchy3Name</Value>
            <Label>ItemHierarchy3</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemHierarchy4Name</Value>
            <Label>ItemHierarchy4</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ItemHierarchy5Name</Value>
            <Label>ItemHierarchy5</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>BrandName</Value>
            <Label>Brand</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>ManufactureName</Value>
            <Label>Manufacture</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>CollectionName</Value>
            <Label>Collection</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>PartnerName</Value>
            <Label>Partner</Label>
          </ParameterValue>
          <ParameterValue>
            <Value>PartnerGroupName</Value>
            <Label>PartnerGroup</Label>
          </ParameterValue>
        </ParameterValues>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="From">
      <DataType>DateTime</DataType>
      <Prompt>From</Prompt>
      <DefaultValue>
        <Values>
          <Value>1/9/2021 12:00 AM</Value>
        </Values>
      </DefaultValue>
    </ReportParameter>
    <ReportParameter Name="To">
      <DataType>DateTime</DataType>
      <Prompt>To</Prompt>
      <DefaultValue>
        <Values>
          <Value>5/5/2022 12:00:00 AM</Value>
        </Values>
      </DefaultValue>
    </ReportParameter>
    <ReportParameter Name="Company">
      <DataType>Integer</DataType>
      <Prompt>Company</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>CompanyList</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="Store">
      <DataType>Integer</DataType>
      <Prompt>Store</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>StoreList</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="POS">
      <DataType>Integer</DataType>
      <Prompt>POS</Prompt>
      <Nullable>true</Nullable>
      <ValidValues>
        <DataSetReference>
          <DataSetName>PosList</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemHierarchy1">
      <DataType>Integer</DataType>
      <Prompt>ItemHierarchy1</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ItemHierarchy1List</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemHierarchy2">
      <DataType>Integer</DataType>
      <Prompt>ItemHierarchy2</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ItemHierarchy2List</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemHierarchy3">
      <DataType>Integer</DataType>
      <Prompt>ItemHierarchy3</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ItemHierarchy3List</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemHierarchy4">
      <DataType>Integer</DataType>
      <Prompt>ItemHierarchy4</Prompt>
      <Nullable>true</Nullable>
      <DefaultValue>
        <Values>
          <Value>=0</Value>
        </Values>
      </DefaultValue>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ItemHierarchy4List</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemHierarchy5">
      <DataType>Integer</DataType>
      <Prompt>ItemHierarchy5</Prompt>
      <Nullable>true</Nullable>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ItemHierarchy5List</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="Manufacture">
      <DataType>Integer</DataType>
      <Prompt>Manufacture</Prompt>
      <Nullable>true</Nullable>
      <ValidValues>
        <DataSetReference>
          <DataSetName>ManufactureList</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="PartnerCode">
      <DataType>String</DataType>
      <Prompt>Partner code</Prompt>
      <AllowBlank>true</AllowBlank>
    </ReportParameter>
    <ReportParameter Name="PartnerGroup">
      <DataType>Integer</DataType>
      <Prompt>Partner group</Prompt>
      <Nullable>true</Nullable>
      <ValidValues>
        <DataSetReference>
          <DataSetName>PartnerGroup</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
    <ReportParameter Name="ItemCode">
      <DataType>String</DataType>
      <Prompt>Item code</Prompt>
      <AllowBlank>true</AllowBlank>
    </ReportParameter>
    <ReportParameter Name="Brand">
      <DataType>Integer</DataType>
      <Prompt>Brand</Prompt>
      <Nullable>true</Nullable>
      <ValidValues>
        <DataSetReference>
          <DataSetName>BrandList</DataSetName>
          <ValueField>ID</ValueField>
          <LabelField>DisplayName</LabelField>
        </DataSetReference>
      </ValidValues>
    </ReportParameter>
  </ReportParameters>
  <ReportParametersLayout>
    <GridLayoutDefinition>
      <NumberOfColumns>4</NumberOfColumns>
      <NumberOfRows>6</NumberOfRows>
      <CellDefinitions>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>0</RowIndex>
          <ParameterName>GroupBy</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>1</ColumnIndex>
          <RowIndex>0</RowIndex>
          <ParameterName>From</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>2</ColumnIndex>
          <RowIndex>0</RowIndex>
          <ParameterName>To</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>1</RowIndex>
          <ParameterName>Company</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>1</ColumnIndex>
          <RowIndex>1</RowIndex>
          <ParameterName>Store</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>2</ColumnIndex>
          <RowIndex>1</RowIndex>
          <ParameterName>POS</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>2</RowIndex>
          <ParameterName>ItemHierarchy1</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>1</ColumnIndex>
          <RowIndex>2</RowIndex>
          <ParameterName>ItemHierarchy2</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>2</ColumnIndex>
          <RowIndex>2</RowIndex>
          <ParameterName>ItemHierarchy3</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>3</RowIndex>
          <ParameterName>ItemHierarchy4</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>1</ColumnIndex>
          <RowIndex>3</RowIndex>
          <ParameterName>ItemHierarchy5</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>2</ColumnIndex>
          <RowIndex>3</RowIndex>
          <ParameterName>Manufacture</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>4</RowIndex>
          <ParameterName>PartnerCode</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>1</ColumnIndex>
          <RowIndex>4</RowIndex>
          <ParameterName>PartnerGroup</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>2</ColumnIndex>
          <RowIndex>4</RowIndex>
          <ParameterName>ItemCode</ParameterName>
        </CellDefinition>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>5</RowIndex>
          <ParameterName>Brand</ParameterName>
        </CellDefinition>
      </CellDefinitions>
    </GridLayoutDefinition>
  </ReportParametersLayout>
  <CustomProperties>
    <CustomProperty>
      <Name>EnableFilterSearch</Name>
      <Value>true</Value>
    </CustomProperty>
    <CustomProperty>
      <Name>PopupHeight</Name>
      <Value>300px</Value>
    </CustomProperty>
  </CustomProperties>
  <Language>en-GB</Language>
  <rd:ReportUnitType>Cm</rd:ReportUnitType>
  <rd:PageUnit />
  <df:DefaultFontFamily>Segoe UI</df:DefaultFontFamily>
</Report>', 1, 1, '2022-08-19 15:06:21.1889831 +03:00', 1, N'N', 'b76abc3c-9f63-48eb-be5d-902fff9af53c', 1, NULL, 2)
SET IDENTITY_INSERT [dbo].[WebReport] OFF
SET IDENTITY_INSERT [dbo].[WebReport] ON
INSERT INTO [dbo].[WebReport] ([ID], [Name], [Code], [Rdl], [WebReportCategoryID], [WebReportCategorySubID], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [LanguageID]) VALUES (10021, N'Test', N'01', N'<?xml version="1.0" encoding="utf-8"?>
<Report xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner" xmlns:df="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition/defaultfontfamily" xmlns="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition">
  <ReportSections>
    <ReportSection>
      <Body>
        <Height>3.125in</Height>
        <ReportItems>
          <Tablix Name="Tablix1">
            <Left>16.5pt</Left>
            <Top>43.125pt</Top>
            <Height>36pt</Height>
            <Width>432pt</Width>
            <Style>
              <FontFamily>Arial</FontFamily>
              <Border>
                <Style>None</Style>
              </Border>
            </Style>
            <DataSetName>DataSet1</DataSetName>
            <TablixBody>
              <TablixColumns>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
              </TablixColumns>
              <TablixRows>
                <TablixRow>
                  <Height>18pt</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox1">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox2">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox7">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox9">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox3">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox11">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
                <TablixRow>
                  <Height>18pt</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox4">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!TransactionNumber.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox5">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Name.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox8">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Store.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox10">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!POS.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox6">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!TransactionDate.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox12">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Discount.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
              </TablixRows>
            </TablixBody>
            <TablixColumnHierarchy>
              <TablixMembers>
                <TablixMember />
                <TablixMember />
                <TablixMember />
                <TablixMember />
                <TablixMember />
                <TablixMember />
              </TablixMembers>
            </TablixColumnHierarchy>
            <TablixRowHierarchy>
              <TablixMembers>
                <TablixMember>
                  <KeepWithGroup>After</KeepWithGroup>
                </TablixMember>
                <TablixMember>
                  <Group Name="Details" />
                </TablixMember>
              </TablixMembers>
            </TablixRowHierarchy>
          </Tablix>
        </ReportItems>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Body>
      <Width>793.5pt</Width>
      <Page>
        <PageFooter>
          <Height>0.72917in</Height>
          <PrintOnFirstPage>true</PrintOnFirstPage>
          <PrintOnLastPage>true</PrintOnLastPage>
          <Style>
            <Border>
              <Style>None</Style>
            </Border>
          </Style>
        </PageFooter>
        <LeftMargin>1in</LeftMargin>
        <RightMargin>1in</RightMargin>
        <TopMargin>1in</TopMargin>
        <BottomMargin>1in</BottomMargin>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Page>
    </ReportSection>
  </ReportSections>
  <DataSources>
    <DataSource Name="CustomerDB">
      <rd:SecurityType>None</rd:SecurityType>
      <ConnectionProperties>
        <DataProvider>SQL</DataProvider>
        <ConnectString>Data Source=172.21.10.79,1433;Initial Catalog=RetailCloudNew2;User Id=sa;Password=upitec</ConnectString>
      </ConnectionProperties>
    </DataSource>
  </DataSources>
  <DataSets>
    <DataSet Name="DataSet1">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>declare @partnerCode nvarchar(100)
set @partnerCode=''1''

select t.TransactionNumber, tt.Name, s.Code [Store], pos.Code [POS], t.TransactionDate, i.Code, i.ShortDisplayName, ti.Quantity, ti.Price, ti.Discount,  ti.Amount + ti.Discount [LineTotal]
from [Transaction] t
join TransactionItem ti on t.ID=ti.TransactionID
join Item i on i.ID=ti.ItemID
join [Partner] p on p.ID=t.PartnerID
join [Location] l on l.ID=t.LocationID
join Store s on s.ID=l.StoreID
join POS pos on pos.ID=l.PosID 
join TransactionType tt on tt.ID = t.TransactionTypeID
where p.PartnerCode=@partnerCode</CommandText>
      </Query>
      <Fields>
        <Field Name="TransactionNumber">
          <DataField>TransactionNumber</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="Name">
          <DataField>Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="Store">
          <DataField>Store</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="POS">
          <DataField>POS</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="TransactionDate">
          <DataField>TransactionDate</DataField>
          <rd:TypeName>System.DateTimeOffset</rd:TypeName>
        </Field>
        <Field Name="Code">
          <DataField>Code</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ShortDisplayName">
          <DataField>ShortDisplayName</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="Quantity">
          <DataField>Quantity</DataField>
          <rd:TypeName>System.Decimal</rd:TypeName>
        </Field>
        <Field Name="Price">
          <DataField>Price</DataField>
          <rd:TypeName>System.Decimal</rd:TypeName>
        </Field>
        <Field Name="Discount">
          <DataField>Discount</DataField>
          <rd:TypeName>System.Decimal</rd:TypeName>
        </Field>
        <Field Name="LineTotal">
          <DataField>LineTotal</DataField>
          <rd:TypeName>System.Decimal</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
  </DataSets>
  <ReportParametersLayout>
    <GridLayoutDefinition>
      <NumberOfColumns>4</NumberOfColumns>
      <NumberOfRows>2</NumberOfRows>
    </GridLayoutDefinition>
  </ReportParametersLayout>
  <rd:ReportUnitType>Inch</rd:ReportUnitType>
  <rd:PageUnit>Px</rd:PageUnit>
  <df:DefaultFontFamily>Segoe UI</df:DefaultFontFamily>
</Report>', 1, 1, '2022-08-01 18:03:26.8333333 +00:00', 2, N'N', 'f86cd0eb-43d6-4775-89e0-f32368ff68ed', 1, NULL, 2)
INSERT INTO [dbo].[WebReport] ([ID], [Name], [Code], [Rdl], [WebReportCategoryID], [WebReportCategorySubID], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [LanguageID]) VALUES (10022, N'test yuriy', N'0011', N'<?xml version="1.0" encoding="utf-8"?>
<Report xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner" xmlns:df="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition/defaultfontfamily" xmlns="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition">
  <ReportSections>
    <ReportSection>
      <Body>
        <Height>3.125in</Height>
        <ReportItems>
          <Tablix Name="Tablix1">
            <Left>85.5pt</Left>
            <Top>59.24531pt</Top>
            <Height>36pt</Height>
            <Width>216pt</Width>
            <Style>
              <FontFamily>Arial</FontFamily>
              <Border>
                <Style>None</Style>
              </Border>
            </Style>
            <DataSetName>DataSet1</DataSetName>
            <TablixBody>
              <TablixColumns>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
              </TablixColumns>
              <TablixRows>
                <TablixRow>
                  <Height>18pt</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox1">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>id</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                          <UserSort>
                            <SortExpression>=Fields!ID.Value</SortExpression>
                            <SortExpressionScope>Details</SortExpressionScope>
                            <SortTarget>DataSet1</SortTarget>
                          </UserSort>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox2">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox3">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
                <TablixRow>
                  <Height>18pt</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox4">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!ID.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox5">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Name.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox6">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!UpdateDate.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
              </TablixRows>
            </TablixBody>
            <TablixColumnHierarchy>
              <TablixMembers>
                <TablixMember />
                <TablixMember />
                <TablixMember />
              </TablixMembers>
            </TablixColumnHierarchy>
            <TablixRowHierarchy>
              <TablixMembers>
                <TablixMember>
                  <KeepWithGroup>After</KeepWithGroup>
                </TablixMember>
                <TablixMember>
                  <Group Name="Details" />
                </TablixMember>
              </TablixMembers>
            </TablixRowHierarchy>
          </Tablix>
        </ReportItems>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Body>
      <Width>6.5in</Width>
      <Page>
        <PageFooter>
          <Height>0.72917in</Height>
          <PrintOnFirstPage>true</PrintOnFirstPage>
          <PrintOnLastPage>true</PrintOnLastPage>
          <Style>
            <Border>
              <Style>None</Style>
            </Border>
          </Style>
        </PageFooter>
        <LeftMargin>1in</LeftMargin>
        <RightMargin>1in</RightMargin>
        <TopMargin>1in</TopMargin>
        <BottomMargin>1in</BottomMargin>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Page>
    </ReportSection>
  </ReportSections>
  <DataSources>
    <DataSource Name="CustomerDB">
      <rd:SecurityType>None</rd:SecurityType>
      <ConnectionProperties>
        <DataProvider>SQL</DataProvider>
        <ConnectString>Data Source=172.21.10.79,1433;Initial Catalog=RetailCloudNew2;User Id=sa;Password=upitec</ConnectString>
      </ConnectionProperties>
    </DataSource>
  </DataSources>
  <DataSets>
    <DataSet Name="DataSet1">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>SELECT top 100 [dbo].[Assortment].[ID],
[dbo].[Assortment].[Code],
[dbo].[Assortment].[ItemBasketSetID],
[dbo].[Assortment].[LocationBasketSetID],
[dbo].[Assortment].[CreateDate],
[dbo].[Assortment].[UpdateDate],
[dbo].[Assortment].[Version],
[dbo].[Assortment].[IsDeleted],
[dbo].[Assortment].[GUID],
[dbo].[Assortment].[Name],
[dbo].[Assortment].[AppType],
[dbo].[Assortment].[UpdateUser] FROM [dbo].[Assortment]</CommandText>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="Code">
          <DataField>Code</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="ItemBasketSetID">
          <DataField>ItemBasketSetID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="LocationBasketSetID">
          <DataField>LocationBasketSetID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="CreateDate">
          <DataField>CreateDate</DataField>
          <rd:TypeName>System.DateTimeOffset</rd:TypeName>
        </Field>
        <Field Name="UpdateDate">
          <DataField>UpdateDate</DataField>
          <rd:TypeName>System.DateTimeOffset</rd:TypeName>
        </Field>
        <Field Name="Version">
          <DataField>Version</DataField>
          <rd:TypeName>System.Int32</rd:TypeName>
        </Field>
        <Field Name="IsDeleted">
          <DataField>IsDeleted</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="GUID">
          <DataField>GUID</DataField>
          <rd:TypeName>System.Guid</rd:TypeName>
        </Field>
        <Field Name="Name">
          <DataField>Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="AppType">
          <DataField>AppType</DataField>
          <rd:TypeName>System.Int32</rd:TypeName>
        </Field>
        <Field Name="UpdateUser">
          <DataField>UpdateUser</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
  </DataSets>
  <ReportParametersLayout>
    <GridLayoutDefinition>
      <NumberOfColumns>4</NumberOfColumns>
      <NumberOfRows>2</NumberOfRows>
    </GridLayoutDefinition>
  </ReportParametersLayout>
  <rd:ReportUnitType>Inch</rd:ReportUnitType>
  <rd:PageUnit>Px</rd:PageUnit>
  <df:DefaultFontFamily>Segoe UI</df:DefaultFontFamily>
</Report>', 1, NULL, '2022-08-15 15:54:14.2666667 +00:00', 2, N'N', '001e6d9a-6e07-4ee8-b2af-c465d1e2d785', 1, NULL, 2)
INSERT INTO [dbo].[WebReport] ([ID], [Name], [Code], [Rdl], [WebReportCategoryID], [WebReportCategorySubID], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [LanguageID]) VALUES (10023, N'Yuriy', N'112233', N'<?xml version="1.0" encoding="utf-8"?>
<Report xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner" xmlns:df="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition/defaultfontfamily" xmlns="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition">
  <ReportSections>
    <ReportSection>
      <Body>
        <Height>3.125in</Height>
        <ReportItems>
          <Tablix Name="Tablix1">
            <Left>13.49062pt</Left>
            <Top>14.25pt</Top>
            <Height>36pt</Height>
            <Width>216pt</Width>
            <Style>
              <FontFamily>Arial</FontFamily>
              <Border>
                <Style>None</Style>
              </Border>
            </Style>
            <DataSetName>DataSet1</DataSetName>
            <TablixBody>
              <TablixColumns>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
              </TablixColumns>
              <TablixRows>
                <TablixRow>
                  <Height>18pt</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox3">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Name</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
                <TablixRow>
                  <Height>18pt</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox6">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Name.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
              </TablixRows>
            </TablixBody>
            <TablixColumnHierarchy>
              <TablixMembers>
                <TablixMember />
              </TablixMembers>
            </TablixColumnHierarchy>
            <TablixRowHierarchy>
              <TablixMembers>
                <TablixMember>
                  <TablixHeader>
                    <Size>72pt</Size>
                    <CellContents>
                      <Textbox Name="TextBox11">
                        <Left>0in</Left>
                        <Top>0in</Top>
                        <Height>18pt</Height>
                        <Width>72pt</Width>
                        <Style>
                          <FontFamily>Arial</FontFamily>
                          <PaddingLeft>2pt</PaddingLeft>
                          <PaddingRight>2pt</PaddingRight>
                          <PaddingTop>2pt</PaddingTop>
                          <PaddingBottom>2pt</PaddingBottom>
                          <Border>
                            <Color>LightGrey</Color>
                            <Style>Solid</Style>
                          </Border>
                        </Style>
                        <CanGrow>true</CanGrow>
                        <KeepTogether>true</KeepTogether>
                        <Paragraphs>
                          <Paragraph>
                            <TextRuns>
                              <TextRun>
                                <Value>Group1</Value>
                                <Style>
                                  <FontFamily>Arial</FontFamily>
                                </Style>
                              </TextRun>
                            </TextRuns>
                            <Style>
                              <FontFamily>Arial</FontFamily>
                            </Style>
                          </Paragraph>
                        </Paragraphs>
                      </Textbox>
                    </CellContents>
                  </TablixHeader>
                  <TablixMembers>
                    <TablixMember>
                      <TablixHeader>
                        <Size>72pt</Size>
                        <CellContents>
                          <Textbox Name="TextBox13">
                            <Left>0in</Left>
                            <Top>0in</Top>
                            <Height>18pt</Height>
                            <Width>72pt</Width>
                            <Style>
                              <FontFamily>Arial</FontFamily>
                              <PaddingLeft>2pt</PaddingLeft>
                              <PaddingRight>2pt</PaddingRight>
                              <PaddingTop>2pt</PaddingTop>
                              <PaddingBottom>2pt</PaddingBottom>
                              <Border>
                                <Color>LightGrey</Color>
                                <Style>Solid</Style>
                              </Border>
                            </Style>
                            <CanGrow>true</CanGrow>
                            <KeepTogether>true</KeepTogether>
                            <Paragraphs>
                              <Paragraph>
                                <TextRuns>
                                  <TextRun>
                                    <Value>ID2</Value>
                                    <Style>
                                      <FontFamily>Arial</FontFamily>
                                    </Style>
                                  </TextRun>
                                </TextRuns>
                                <Style>
                                  <FontFamily>Arial</FontFamily>
                                </Style>
                              </Paragraph>
                            </Paragraphs>
                          </Textbox>
                        </CellContents>
                      </TablixHeader>
                      <TablixMembers>
                        <TablixMember />
                      </TablixMembers>
                    </TablixMember>
                  </TablixMembers>
                </TablixMember>
                <TablixMember>
                  <Group Name="Group1">
                    <GroupExpressions>
                      <GroupExpression>=1</GroupExpression>
                    </GroupExpressions>
                  </Group>
                  <SortExpressions>
                    <SortExpression>
                      <Value>=1</Value>
                      <Direction>Ascending</Direction>
                    </SortExpression>
                  </SortExpressions>
                  <TablixHeader>
                    <Size>72pt</Size>
                    <CellContents>
                      <Textbox Name="Group11">
                        <Left>0in</Left>
                        <Top>0in</Top>
                        <Height>18pt</Height>
                        <Width>72pt</Width>
                        <Style>
                          <FontFamily>Arial</FontFamily>
                          <PaddingLeft>2pt</PaddingLeft>
                          <PaddingRight>2pt</PaddingRight>
                          <PaddingTop>2pt</PaddingTop>
                          <PaddingBottom>2pt</PaddingBottom>
                          <Border>
                            <Color>LightGrey</Color>
                            <Style>Solid</Style>
                          </Border>
                        </Style>
                        <CanGrow>true</CanGrow>
                        <KeepTogether>true</KeepTogether>
                        <Paragraphs>
                          <Paragraph>
                            <TextRuns>
                              <TextRun>
                                <Value>=1</Value>
                                <Style>
                                  <FontFamily>Arial</FontFamily>
                                  <Color>black</Color>
                                </Style>
                              </TextRun>
                            </TextRuns>
                            <Style>
                              <FontFamily>Arial</FontFamily>
                            </Style>
                          </Paragraph>
                        </Paragraphs>
                        <ToggleImage>
                          <InitialState>true</InitialState>
                        </ToggleImage>
                      </Textbox>
                    </CellContents>
                  </TablixHeader>
                  <TablixMembers>
                    <TablixMember>
                      <Group Name="ID2">
                        <GroupExpressions>
                          <GroupExpression>=Fields!ID.Value</GroupExpression>
                        </GroupExpressions>
                      </Group>
                      <SortExpressions>
                        <SortExpression>
                          <Value>=Fields!ID.Value</Value>
                          <Direction>Ascending</Direction>
                        </SortExpression>
                      </SortExpressions>
                      <TablixHeader>
                        <Size>72pt</Size>
                        <CellContents>
                          <Textbox Name="ID21">
                            <Left>0in</Left>
                            <Top>0in</Top>
                            <Height>18pt</Height>
                            <Width>72pt</Width>
                            <Style>
                              <FontFamily>Arial</FontFamily>
                              <PaddingLeft>2pt</PaddingLeft>
                              <PaddingRight>2pt</PaddingRight>
                              <PaddingTop>2pt</PaddingTop>
                              <PaddingBottom>2pt</PaddingBottom>
                              <Border>
                                <Color>LightGrey</Color>
                                <Style>Solid</Style>
                              </Border>
                            </Style>
                            <CanGrow>true</CanGrow>
                            <KeepTogether>true</KeepTogether>
                            <Paragraphs>
                              <Paragraph>
                                <TextRuns>
                                  <TextRun>
                                    <Value>=Fields!ID.Value</Value>
                                    <Style>
                                      <FontFamily>Arial</FontFamily>
                                    </Style>
                                  </TextRun>
                                </TextRuns>
                                <Style>
                                  <FontFamily>Arial</FontFamily>
                                </Style>
                              </Paragraph>
                            </Paragraphs>
                          </Textbox>
                        </CellContents>
                      </TablixHeader>
                      <TablixMembers>
                        <TablixMember>
                          <Group Name="Details" />
                        </TablixMember>
                      </TablixMembers>
                      <Visibility>
                        <Hidden>False</Hidden>
                        <ToggleItem>Group11</ToggleItem>
                      </Visibility>
                    </TablixMember>
                  </TablixMembers>
                </TablixMember>
              </TablixMembers>
            </TablixRowHierarchy>
          </Tablix>
          <Tablix Name="Tablix2">
            <Left>24.75pt</Left>
            <Top>90pt</Top>
            <Height>36pt</Height>
            <Width>216pt</Width>
            <Style>
              <FontFamily>Arial</FontFamily>
              <Border>
                <Style>None</Style>
              </Border>
            </Style>
            <DataSetName>DataSet1</DataSetName>
            <TablixBody>
              <TablixColumns>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
              </TablixColumns>
              <TablixRows>
                <TablixRow>
                  <Height>18pt</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox1">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>ID</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                          <UserSort>
                            <SortExpression>=Fields!ID.Value</SortExpression>
                          </UserSort>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox2">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Code</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox4">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>Name</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
                <TablixRow>
                  <Height>18pt</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox5">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!ID.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox7">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Code.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox8">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Name.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
              </TablixRows>
            </TablixBody>
            <TablixColumnHierarchy>
              <TablixMembers>
                <TablixMember />
                <TablixMember />
                <TablixMember />
              </TablixMembers>
            </TablixColumnHierarchy>
            <TablixRowHierarchy>
              <TablixMembers>
                <TablixMember>
                  <KeepWithGroup>After</KeepWithGroup>
                </TablixMember>
                <TablixMember>
                  <Group Name="Details1" />
                </TablixMember>
              </TablixMembers>
            </TablixRowHierarchy>
          </Tablix>
        </ReportItems>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Body>
      <Width>6.5in</Width>
      <Page>
        <PageFooter>
          <Height>0.72917in</Height>
          <PrintOnFirstPage>true</PrintOnFirstPage>
          <PrintOnLastPage>true</PrintOnLastPage>
          <Style>
            <Border>
              <Style>None</Style>
            </Border>
          </Style>
        </PageFooter>
        <LeftMargin>1in</LeftMargin>
        <RightMargin>1in</RightMargin>
        <TopMargin>1in</TopMargin>
        <BottomMargin>1in</BottomMargin>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Page>
    </ReportSection>
  </ReportSections>
  <DataSources>
    <DataSource Name="CustomerDB">
      <rd:SecurityType>None</rd:SecurityType>
      <ConnectionProperties>
        <DataProvider>SQL</DataProvider>
        <ConnectString>Data Source=172.21.10.79,1433;Initial Catalog=RetailCloudNew2;User Id=sa;Password=upitec</ConnectString>
      </ConnectionProperties>
    </DataSource>
  </DataSources>
  <DataSets>
    <DataSet Name="DataSet1">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>SELECT [dbo].[Language].[ID],
[dbo].[Language].[Code],
[dbo].[Language].[Name],
[dbo].[Language].[NameEn],
[dbo].[Language].[UpdateDate],
[dbo].[Language].[Version],
[dbo].[Language].[IsDeleted],
[dbo].[Language].[GUID],
[dbo].[Language].[AppType],
[dbo].[Language].[UpdateUser] FROM [dbo].[Language]</CommandText>
        <QueryDesignerState xmlns="http://schemas.microsoft.com/ReportingServices/QueryDefinition/Relational">
          <Tables>
            <Table Name="Language" Schema="dbo">
              <Columns>
                <Column Name="ID" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="Code" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="Name" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="NameEn" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="UpdateDate" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="Version" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="IsDeleted" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="GUID" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="AppType" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="UpdateUser" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
              </Columns>
              <SchemaLevels>
                <SchemaInfo Name="dbo" SchemaType="Schema" />
                <SchemaInfo Name="Tables" SchemaType="Category" />
                <SchemaInfo Name="Language" SchemaType="Table" />
              </SchemaLevels>
            </Table>
          </Tables>
        </QueryDesignerState>
      </Query>
      <Fields>
        <Field Name="ID">
          <DataField>ID</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
        <Field Name="Code">
          <DataField>Code</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="Name">
          <DataField>Name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="NameEn">
          <DataField>NameEn</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="UpdateDate">
          <DataField>UpdateDate</DataField>
          <rd:TypeName>System.DateTimeOffset</rd:TypeName>
        </Field>
        <Field Name="Version">
          <DataField>Version</DataField>
          <rd:TypeName>System.Int32</rd:TypeName>
        </Field>
        <Field Name="IsDeleted">
          <DataField>IsDeleted</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="GUID">
          <DataField>GUID</DataField>
          <rd:TypeName>System.Guid</rd:TypeName>
        </Field>
        <Field Name="AppType">
          <DataField>AppType</DataField>
          <rd:TypeName>System.Int32</rd:TypeName>
        </Field>
        <Field Name="UpdateUser">
          <DataField>UpdateUser</DataField>
          <rd:TypeName>System.Int64</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
  </DataSets>
  <ReportParametersLayout>
    <GridLayoutDefinition>
      <NumberOfColumns>4</NumberOfColumns>
      <NumberOfRows>2</NumberOfRows>
    </GridLayoutDefinition>
  </ReportParametersLayout>
  <rd:ReportUnitType>Inch</rd:ReportUnitType>
  <rd:PageUnit>Px</rd:PageUnit>
  <df:DefaultFontFamily>Segoe UI</df:DefaultFontFamily>
</Report>', 3, NULL, '2022-08-16 12:03:57.2566667 +00:00', 5, N'N', 'd469644b-ea70-48b5-81e3-20771d57b743', 1, NULL, 2)
INSERT INTO [dbo].[WebReport] ([ID], [Name], [Code], [Rdl], [WebReportCategoryID], [WebReportCategorySubID], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [LanguageID]) VALUES (10024, N'TEST 1', N'TEST1', N'<?xml version="1.0" encoding="utf-8"?>
<Report xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner" xmlns:df="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition/defaultfontfamily" xmlns="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition">
  <ReportSections>
    <ReportSection>
      <Body>
        <Height>3.125in</Height>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Body>
      <Width>6.5in</Width>
      <Page>
        <PageFooter>
          <Height>0.72917in</Height>
          <PrintOnFirstPage>true</PrintOnFirstPage>
          <PrintOnLastPage>true</PrintOnLastPage>
          <Style>
            <Border>
              <Style>None</Style>
            </Border>
          </Style>
        </PageFooter>
        <LeftMargin>1in</LeftMargin>
        <RightMargin>1in</RightMargin>
        <TopMargin>1in</TopMargin>
        <BottomMargin>1in</BottomMargin>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Page>
    </ReportSection>
  </ReportSections>
  <DataSources>
    <DataSource Name="CustomerDB">
      <rd:SecurityType>None</rd:SecurityType>
      <ConnectionProperties>
        <DataProvider>SQL</DataProvider>
        <ConnectString>Data Source=172.21.10.79,1433;Initial Catalog=RetailCloudNew2;User Id=sa;Password=upitec</ConnectString>
      </ConnectionProperties>
    </DataSource>
  </DataSources>
  <ReportParametersLayout>
    <GridLayoutDefinition>
      <NumberOfColumns>4</NumberOfColumns>
      <NumberOfRows>2</NumberOfRows>
    </GridLayoutDefinition>
  </ReportParametersLayout>
  <rd:ReportUnitType>Inch</rd:ReportUnitType>
  <rd:PageUnit>Px</rd:PageUnit>
  <df:DefaultFontFamily>Segoe UI</df:DefaultFontFamily>
</Report>', 1, 1, '2022-08-12 14:52:42.1333225 +03:00', 1, N'N', '2c4fe9ac-52f3-4313-a38e-2b5958df0975', 1, NULL, 2)
INSERT INTO [dbo].[WebReport] ([ID], [Name], [Code], [Rdl], [WebReportCategoryID], [WebReportCategorySubID], [UpdateDate], [Version], [IsDeleted], [GUID], [AppType], [UpdateUser], [LanguageID]) VALUES (10025, N'Itest1', N'Itest1', N'<?xml version="1.0" encoding="utf-8"?>
<Report xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner" xmlns:df="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition/defaultfontfamily" xmlns="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition">
  <ReportSections>
    <ReportSection>
      <Body>
        <Height>3.125in</Height>
        <ReportItems>
          <Tablix Name="Tablix1">
            <Left>32.25pt</Left>
            <Top>63pt</Top>
            <Height>54pt</Height>
            <Width>360pt</Width>
            <Style>
              <FontFamily>Arial</FontFamily>
              <Border>
                <Style>None</Style>
              </Border>
            </Style>
            <DataSetName>DataSet1</DataSetName>
            <TablixBody>
              <TablixColumns>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
                <TablixColumn>
                  <Width>72pt</Width>
                </TablixColumn>
              </TablixColumns>
              <TablixRows>
                <TablixRow>
                  <Height>18pt</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox1">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>col1</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                          <UserSort>
                            <SortExpression>=Fields!Tender.Value</SortExpression>
                            <SortExpressionScope>Details</SortExpressionScope>
                            <SortTarget>Tablix1</SortTarget>
                          </UserSort>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox2">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>col2</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                          <UserSort>
                            <SortExpression>=Fields!SubTender.Value</SortExpression>
                            <SortExpressionScope>Details</SortExpressionScope>
                            <SortTarget>Tablix1</SortTarget>
                          </UserSort>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox3">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>col3</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                          <UserSort>
                            <SortExpression>=Fields!code.Value</SortExpression>
                            <SortExpressionScope>Details</SortExpressionScope>
                            <SortTarget>DataSet1</SortTarget>
                          </UserSort>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox7">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>col14</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                          <UserSort>
                            <SortExpression>=Fields!name.Value</SortExpression>
                            <SortExpressionScope>Details</SortExpressionScope>
                            <SortTarget>Tablix1</SortTarget>
                          </UserSort>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox9">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>col15</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
                <TablixRow>
                  <Height>18pt</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox4">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!Tender.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox5">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!SubTender.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox6">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!code.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                    <Color>black</Color>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                          <UserSort />
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox8">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!name.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox10">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Fields!אמצעי_תשלום.Value</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
                <TablixRow>
                  <Height>18pt</Height>
                  <TablixCells>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox11">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value>=Sum(Fields!Tender.Value)</Value>
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox12">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox13">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox14">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                    <TablixCell>
                      <CellContents>
                        <Textbox Name="TextBox15">
                          <Left>0in</Left>
                          <Top>0in</Top>
                          <Height>18pt</Height>
                          <Width>72pt</Width>
                          <Style>
                            <FontFamily>Arial</FontFamily>
                            <PaddingLeft>2pt</PaddingLeft>
                            <PaddingRight>2pt</PaddingRight>
                            <PaddingTop>2pt</PaddingTop>
                            <PaddingBottom>2pt</PaddingBottom>
                            <Border>
                              <Color>LightGrey</Color>
                              <Style>Solid</Style>
                            </Border>
                          </Style>
                          <CanGrow>true</CanGrow>
                          <KeepTogether>true</KeepTogether>
                          <Paragraphs>
                            <Paragraph>
                              <TextRuns>
                                <TextRun>
                                  <Value />
                                  <Style>
                                    <FontFamily>Arial</FontFamily>
                                  </Style>
                                </TextRun>
                              </TextRuns>
                              <Style>
                                <FontFamily>Arial</FontFamily>
                              </Style>
                            </Paragraph>
                          </Paragraphs>
                        </Textbox>
                        <RowSpan>1</RowSpan>
                        <ColSpan>1</ColSpan>
                      </CellContents>
                    </TablixCell>
                  </TablixCells>
                </TablixRow>
              </TablixRows>
            </TablixBody>
            <TablixColumnHierarchy>
              <TablixMembers>
                <TablixMember />
                <TablixMember />
                <TablixMember />
                <TablixMember />
                <TablixMember />
              </TablixMembers>
            </TablixColumnHierarchy>
            <TablixRowHierarchy>
              <TablixMembers>
                <TablixMember>
                  <KeepWithGroup>After</KeepWithGroup>
                </TablixMember>
                <TablixMember>
                  <Group Name="Details" />
                </TablixMember>
                <TablixMember>
                  <KeepWithGroup>Before</KeepWithGroup>
                </TablixMember>
              </TablixMembers>
            </TablixRowHierarchy>
          </Tablix>
        </ReportItems>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Body>
      <Width>6.5in</Width>
      <Page>
        <PageFooter>
          <Height>63.75pt</Height>
          <PrintOnFirstPage>true</PrintOnFirstPage>
          <PrintOnLastPage>true</PrintOnLastPage>
          <ReportItems>
            <Textbox Name="TextBox16">
              <Left>65.625pt</Left>
              <Top>18.75pt</Top>
              <Height>37.5pt</Height>
              <Width>150pt</Width>
              <Style>
                <FontFamily>Arial</FontFamily>
                <PaddingLeft>2pt</PaddingLeft>
                <PaddingRight>2pt</PaddingRight>
                <PaddingTop>2pt</PaddingTop>
                <PaddingBottom>2pt</PaddingBottom>
                <Border>
                  <Style>None</Style>
                </Border>
              </Style>
              <CanGrow>true</CanGrow>
              <KeepTogether>true</KeepTogether>
              <Paragraphs>
                <Paragraph>
                  <TextRuns>
                    <TextRun>
                      <Value>yutytuyt</Value>
                      <Style>
                        <FontFamily>Arial</FontFamily>
                        <Color>Black</Color>
                      </Style>
                    </TextRun>
                  </TextRuns>
                  <Style>
                    <FontFamily>Arial</FontFamily>
                  </Style>
                </Paragraph>
              </Paragraphs>
            </Textbox>
          </ReportItems>
          <Style>
            <Border>
              <Style>None</Style>
            </Border>
          </Style>
        </PageFooter>
        <LeftMargin>1in</LeftMargin>
        <RightMargin>1in</RightMargin>
        <TopMargin>1in</TopMargin>
        <BottomMargin>1in</BottomMargin>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
          <BackgroundImage>
            <Source>Database</Source>
            <BackgroundRepeat>Default</BackgroundRepeat>
          </BackgroundImage>
        </Style>
      </Page>
    </ReportSection>
  </ReportSections>
  <DataSources>
    <DataSource Name="CustomerDB">
      <rd:SecurityType>None</rd:SecurityType>
      <ConnectionProperties>
        <DataProvider>SQL</DataProvider>
        <ConnectString>Data Source=172.21.10.79,1433;Initial Catalog=RetailCloudNew2;User Id=sa;Password=upitec</ConnectString>
      </ConnectionProperties>
    </DataSource>
  </DataSources>
  <DataSets>
    <DataSet Name="DataSet1">
      <Query>
        <DataSourceName>CustomerDB</DataSourceName>
        <CommandText>SELECT [dbo].[_priority_tender_map_we].[אמצעי תשלום],
[dbo].[_priority_tender_map_we].[Tender],
[dbo].[_priority_tender_map_we].[SubTender],
[dbo].[_priority_tender_map_we].[code],
[dbo].[_priority_tender_map_we].[name] FROM [dbo].[_priority_tender_map_we]</CommandText>
        <QueryDesignerState xmlns="http://schemas.microsoft.com/ReportingServices/QueryDefinition/Relational">
          <Tables>
            <Table Name="_priority_tender_map_we" Schema="dbo">
              <Columns>
                <Column Name="אמצעי תשלום" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="Tender" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="SubTender" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="code" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
                <Column Name="name" AliasName="" AggregateType="" IsDuplicate="false" IsSelected="true" />
              </Columns>
              <SchemaLevels>
                <SchemaInfo Name="dbo" SchemaType="Schema" />
                <SchemaInfo Name="Tables" SchemaType="Category" />
                <SchemaInfo Name="_priority_tender_map_we" SchemaType="Table" />
              </SchemaLevels>
            </Table>
          </Tables>
        </QueryDesignerState>
      </Query>
      <Fields>
        <Field Name="אמצעי_תשלום">
          <DataField>אמצעי תשלום</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="Tender">
          <DataField>Tender</DataField>
          <rd:TypeName>System.Int32</rd:TypeName>
        </Field>
        <Field Name="SubTender">
          <DataField>SubTender</DataField>
          <rd:TypeName>System.Int32</rd:TypeName>
        </Field>
        <Field Name="code">
          <DataField>code</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
        <Field Name="name">
          <DataField>name</DataField>
          <rd:TypeName>System.String</rd:TypeName>
        </Field>
      </Fields>
    </DataSet>
  </DataSets>
  <ReportParameters>
    <ReportParameter Name="ReportParameter1">
      <DataType>String</DataType>
      <Prompt>ReportParameter1</Prompt>
    </ReportParameter>
  </ReportParameters>
  <ReportParametersLayout>
    <GridLayoutDefinition>
      <NumberOfColumns>4</NumberOfColumns>
      <NumberOfRows>2</NumberOfRows>
      <CellDefinitions>
        <CellDefinition>
          <ColumnIndex>0</ColumnIndex>
          <RowIndex>0</RowIndex>
          <ParameterName>ReportParameter1</ParameterName>
        </CellDefinition>
      </CellDefinitions>
    </GridLayoutDefinition>
  </ReportParametersLayout>
  <rd:ReportUnitType>Inch</rd:ReportUnitType>
  <rd:PageUnit>Px</rd:PageUnit>
  <df:DefaultFontFamily>Segoe UI</df:DefaultFontFamily>
</Report>', 1, 1, '2022-08-15 15:36:09.9300000 +00:00', 11, N'N', 'b3b9a858-beb6-461b-9b0f-f3fa2704e190', 1, NULL, 2)
SET IDENTITY_INSERT [dbo].[WebReport] OFF
