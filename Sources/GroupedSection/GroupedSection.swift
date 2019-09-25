struct GroupedSection<Identifier: Hashable, Row> {
    
    var identifier : Identifier
    var rows : [Row]
    
    static func group(_ rows : [Row], by identifierForRow: (Row) -> Identifier) -> [GroupedSection<Identifier, Row>] {
        let groupedHeadlines = Dictionary(grouping: rows, by: identifierForRow)
        return groupedHeadlines.map(GroupedSection.init)
    }
    
}
