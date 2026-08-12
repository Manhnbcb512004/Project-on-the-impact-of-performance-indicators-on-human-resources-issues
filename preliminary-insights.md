E-commerce Recommendation Performance & Revenue Optimization Analytics
Giới thiệu sơ lược tiến trình hiện tại

Dự án hiện đang ở giai đoạn Business Analytics & Dashboard Development, được xây dựng theo pipeline SQL → Data Modeling → DAX → Power BI → Business Insight. Giai đoạn đầu tập trung xử lý và tổ chức dữ liệu liên quan đến hành vi recommendation, sản phẩm, thương hiệu, khách hàng và ngữ cảnh mua sắm. Sau đó xây dựng hệ thống KPI để đo lường hiệu quả recommendation từ góc độ engagement, conversion và revenue.

Trên Power BI, dashboard hiện đã hình thành hai lớp phân tích chính. Lớp đầu tiên – Recommendation Performance tập trung vào Clicks, Recommendations, Conversion Rate, High Recommendation Rate và hiệu suất theo Brand/Rating. Lớp thứ hai – Revenue & Customer Value mở rộng sang AOV, Potential Revenue, Estimated Revenue, Revenue Lost Gap và phân tích theo Customer Tier, Price, Geography và Season.

Ở trạng thái hiện tại, dự án đã chuyển từ việc “mô tả dữ liệu” sang “tìm vấn đề kinh doanh”. Một insight quan trọng đã xuất hiện là khoảng cách giữa Potential Revenue và Estimated Revenue, với Revenue Lost Gap hiện khoảng 2,34 tỷ trong dashboard. Đây sẽ là điểm trung tâm để phát triển các phân tích tiếp theo nhằm xác định khoảng doanh thu bị mất nằm ở customer segment, product/brand, pricing hay contextual factors nào.
Trục phát triển tiếp theo
Recommendation Performance
→ Customer & Product Performance
→ Revenue Opportunity
→ Revenue Lost Gap
→ Root Cause Analysis
→ Optimization Recommendation
1. Recommendation Performance – Conversion Rate

Nguyên nhân/giả thuyết: Hiệu quả chuyển đổi của recommendation có thể đang được hỗ trợ bởi mức độ phù hợp giữa sản phẩm được đề xuất với nhu cầu người dùng, chất lượng sản phẩm và mức độ hấp dẫn của sản phẩm.

Thực trạng: Hệ thống hiện ghi nhận khoảng 22K lượt clicks, 1.018 recommendations và Conversion Rate 42,13%. Đây là mức chuyển đổi đáng chú ý trong phạm vi tập dữ liệu, cho thấy recommendation không chỉ tạo tương tác mà còn có khả năng dẫn người dùng đến hành vi mua hàng.

Cần kiểm tra sâu: Cần phân rã Conversion Rate theo brand, product, rating, price, customer tier và context để xác định yếu tố nào thực sự đang tạo ra chênh lệch conversion. Đặc biệt nên kiểm tra nhóm high-click nhưng low-conversion vì đây có thể là nơi đang lãng phí traffic.
2. Recommendation Performance – Brand Concentration

Nguyên nhân/giả thuyết: Hiệu quả recommendation có thể đang tập trung vào một số thương hiệu có độ nhận diện cao, sản phẩm phù hợp với nhu cầu hoặc có mức độ tương tác tốt hơn.

Thực trạng: Lượng clicks tập trung mạnh ở một số brand, trong đó Wildcraft dẫn đầu với hơn 1,5K clicks, tiếp theo là Patanjali Ayurved, Pepperfry, Flying Machine và Manyavar Mohey. High Recommendation Count cũng tập trung đáng kể ở nhóm brand này.

Cần kiểm tra sâu: Không nên dừng ở volume. Cần đối chiếu Clicks → Conversion → Estimated Revenue → Revenue Lost Gap theo từng brand để xác định brand nào thực sự tạo giá trị, brand nào chỉ tạo traffic và brand nào đang có tiềm năng nhưng chưa được khai thác.
3. Recommendation Quality – Rating

Nguyên nhân/giả thuyết: Sản phẩm có rating cao có thể có mức độ tin tưởng và phù hợp với người dùng tốt hơn, từ đó hỗ trợ khả năng chuyển đổi của recommendation.

Thực trạng: Dashboard cho thấy Conversion Rate có xu hướng tăng khi rating tăng, đồng thời High Recommendation % tăng rõ ở vùng rating cao và tiến gần mức rất cao ở nhóm rating trên 4★.

Cần kiểm tra sâu: Cần kiểm tra rating → recommendation → click → conversion theo từng nhóm sản phẩm/brand. Quan trọng hơn là kiểm tra xem pattern này còn tồn tại sau khi kiểm soát price, brand và customer tier hay không. Nếu còn, rating có thể trở thành một driver đáng chú ý của recommendation performance.
4. Customer Value – Potential Revenue

Nguyên nhân/giả thuyết: Giá trị doanh thu tiềm năng có thể tập trung vào nhóm khách hàng có khả năng chi tiêu cao và có nhu cầu đối với các sản phẩm giá trị lớn hơn.

Thực trạng: Potential Revenue hiện khoảng 4 tỷ đồng, trong đó nhóm High Customer Tier chiếm khoảng 47,66%, tương đương gần 2 tỷ đồng theo dashboard.

Cần kiểm tra sâu: Cần phân tích tiếp Customer Tier → AOV → Conversion → Estimated Revenue để xác định liệu nhóm khách hàng giá trị cao có thực sự chuyển hóa potential value thành revenue tốt hơn hay đang tồn tại khoảng cách lớn giữa tiềm năng và thực tế.
5. Revenue Opportunity – Revenue Lost Gap

Nguyên nhân/giả thuyết: Khoảng cách doanh thu có thể xuất phát từ việc recommendation tạo ra tiềm năng nhưng chưa chuyển đổi được hoàn toàn thành giao dịch, do price mismatch, recommendation chưa phù hợp, conversion thấp hoặc customer affordability.

Thực trạng: Dashboard hiện tại cho thấy Potential Revenue khoảng 4 tỷ, trong khi Estimated Revenue khoảng 1,76 tỷ, tạo ra Revenue Lost Gap khoảng 2,34 tỷ.

Đây hiện là insight business quan trọng nhất của project, vì nó chuyển câu hỏi từ “recommendation hoạt động thế nào?” sang “đang bỏ lỡ bao nhiêu giá trị?”

Cần kiểm tra sâu: Đây nên là một KPI gốc để drill-down:

Revenue Lost Gap → Customer Tier → Brand → Product → Price → Geography → Season → Recommendation Performance.

Mục tiêu cuối cùng là xác định khoảng 2,34 tỷ đang tập trung ở đâu và nguyên nhân chính là gì.
6. Customer Value – Affordability

Nguyên nhân/giả thuyết: Recommendation có thể chưa hoàn toàn phù hợp với khả năng chi trả của từng nhóm khách hàng. Một sản phẩm có rating hoặc recommendation quality cao vẫn có thể không chuyển đổi nếu mức giá vượt quá khả năng chi trả.

Thực trạng: Dashboard đã bắt đầu cho thấy sự khác biệt về Potential Revenue giữa các Customer Tier, đồng thời AOV hiện khoảng 1,79M.

Cần kiểm tra sâu: Nên xây quan hệ:

Customer Tier → AOV → Product Price → Affordability Ratio → Conversion Rate.

Nếu nhóm có affordability thấp đồng thời có conversion thấp, đây sẽ là một nguyên nhân rất đáng chú ý của Revenue Lost Gap
7. Product & Brand – Traffic vs Conversion

Nguyên nhân/giả thuyết: Một số sản phẩm/brand có thể được recommendation nhiều nhưng không chuyển đổi tương ứng; ngược lại, một số sản phẩm có conversion tốt nhưng chưa nhận đủ traffic.

Thực trạng: Scatter plot hiện cho thấy các brand/product phân bố khá rộng giữa Total Clicks và Conversion Rate. Không phải đối tượng có nhiều clicks nhất đều nằm ở nhóm conversion cao nhất.

Cần kiểm tra sâu: Phân loại thành 4 nhóm:

High Traffic – High Conversion: nhóm cần scale.
High Traffic – Low Conversion: nhóm cần tối ưu.
Low Traffic – High Conversion: nhóm có cơ hội tăng traffic.
Low Traffic – Low Conversion: nhóm ưu tiên thấp.

Sau đó đối chiếu thêm Revenue Lost Gap để xác định nhóm nào thực sự có giá trị kinh doanh.
8. Contextual Performance – Season / Geography

Nguyên nhân/giả thuyết: Hiệu quả recommendation có thể thay đổi theo bối cảnh mua sắm. Nhu cầu, khả năng chi trả và hành vi người dùng có thể khác nhau giữa mùa, khu vực và các điều kiện mua sắm khác nhau.

Thực trạng: Dashboard hiện đã cho thấy Conversion Rate và Estimated Revenue có sự khác biệt giữa các season và geographical location. Ví dụ tổng Conversion Rate đang ở khoảng 42,13%, nhưng khi phân tách theo geography/season đã xuất hiện các mức khác nhau đáng kể.

Cần kiểm tra sâu: Không nên phân tích Season và Geography riêng biệt. Nên kiểm tra:

Geography × Season → Conversion → Estimated Revenue → Revenue Lost Gap.

Nếu một số combination có conversion thấp nhưng potential revenue cao, đó có thể là growth opportunity theo context.