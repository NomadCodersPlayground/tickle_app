enum SortOption {
  RECENT,
  MOST_VIEWS, // 검색 기본 옵션
  TODAY_VIEWS,
  WEEKLY_VIEWS,
  MONTHLY_VIEWS,
}

String titleFromSortOption(SortOption sortOption) => switch(sortOption) {
  SortOption.RECENT => "최근 인기글",
  SortOption.MOST_VIEWS => "인기글",
  SortOption.TODAY_VIEWS => "일간 인기글",
  SortOption.WEEKLY_VIEWS => "주간 인기글",
  SortOption.MONTHLY_VIEWS => "월간 인기글",
};