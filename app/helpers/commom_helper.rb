module CommomHelper

  # 获取当前序列号，有分页列表的情况下。
  def current_index(objects, index)
    # 如果 objects 不是分页变量，则直接返回当前 index
    return index + 1 unless objects.methods.include?(:total_pages)
    # 当页序号 + 前面几页总数
    (index + 1) + (objects.current_page-1) * objects.limit_value
  end
  
end