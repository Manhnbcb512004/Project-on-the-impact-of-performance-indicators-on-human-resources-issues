CREDIT RISK ANALYTICS
Hệ thống phân tích rủi ro tín dụng theo mô hình 4C of Credit
Tổng quan dự án

Credit Risk Analytics là dự án phân tích dữ liệu nhằm đánh giá toàn diện rủi ro tín dụng của khách hàng dựa trên khung quản trị 4C of Credit, bao gồm:
Capacity – Năng lực tài chính
Character – Hành vi và uy tín tín dụng
Stability – Mức độ ổn định tài chính
Collateral – Tài sản bảo đảm

Dự án được xây dựng với mục tiêu xác định các yếu tố thực sự dẫn đến khả năng vỡ nợ (Default Risk), kiểm định hiệu quả của hệ thống Credit Score hiện hành và đề xuất định hướng chuyển đổi sang mô hình Behavioral Risk Scoring kết hợp Early Warning System.

Thay vì chỉ đánh giá khách hàng thông qua các chỉ số tài chính truyền thống như thu nhập, tỷ lệ nợ hay điểm tín dụng, dự án tập trung phân tích sâu các yếu tố hành vi như lịch sử vỡ nợ, số lần quá hạn thanh toán, mức độ duy trì hành vi chậm trả và sự thay đổi rủi ro theo thời gian nhằm xác định các tín hiệu cảnh báo sớm trước khi khách hàng chuyển sang trạng thái nợ xấu.

Mục tiêu kinh doanh

Dự án hướng đến giải quyết bốn bài toán trọng tâm trong quản trị rủi ro tín dụng:

1. Đánh giá năng lực phân tách rủi ro của Credit Score
Xác định liệu hệ thống chấm điểm tín dụng hiện tại có thực sự phân biệt được khách hàng tốt và khách hàng xấu hay không.

2. Xác định các yếu tố ảnh hưởng mạnh nhất đến xác suất vỡ nợ
Phân tích mức độ tác động của các yếu tố tài chính và hành vi như:
Debt-to-Income Ratio (DTI)
Loan-to-Income Ratio (LTI)
Previous Defaults
Delinquency Frequency
Loan Purpose
Income Level
Credit Score

3. Xây dựng hệ thống cảnh báo sớm (Early Warning System)
Phát hiện các ngưỡng rủi ro quan trọng trước khi khách hàng phát sinh nợ xấu, từ đó hỗ trợ:
Can thiệp sớm
Kiểm soát hạn mức tín dụng
Giảm tổn thất danh mục

4. Tối ưu hóa chiến lược quản trị danh mục tín dụng
Xác định:
Nhóm khách hàng nên mở rộng cấp tín dụng
Nhóm khách hàng cần giám sát đặc biệt
Nhóm khách hàng cần hạn chế hoặc từ chối cấp vốn
Những phát hiện nổi bật hiện tại
Các phân tích thuộc Capacity Analysis và Character Analysis đã cho thấy nhiều phát hiện quan trọng:
Credit Score gần như mất hoàn toàn khả năng phân tách rủi ro với AUC = 0.4915 và Gini = -0.0171.
Tỷ lệ nợ xấu duy trì quanh mức 67%–68% ở hầu hết các phân khúc điểm tín dụng, cho thấy hệ thống scorecard hiện tại không còn hiệu quả.
Previous Defaults là biến dự báo mạnh nhất trong toàn bộ mô hình.
Khách hàng có lịch sử vỡ nợ thể hiện xác suất tiếp tục vỡ nợ vượt trội so với mọi yếu tố tài chính khác.
Ngưỡng Delinquency Frequency = 2 được xác định là điểm bùng phát rủi ro quan trọng trong hệ thống.
Nhóm khách hàng có Persistence Score từ 4–7 ghi nhận xác suất vỡ nợ gần như tuyệt đối.
DTI cao làm gia tăng áp lực tài chính, tuy nhiên hành vi tín dụng vẫn là yếu tố quyết định cuối cùng đối với khả năng vỡ nợ.
Phân tích phân cụm hành vi (Behavioral Clustering) cho thấy sự tồn tại của các nhóm khách hàng có chân dung rủi ro hoàn toàn khác nhau dù sở hữu các chỉ số tài chính tương đồng.

Giá trị của dự án
Dự án không chỉ dừng lại ở việc mô tả dữ liệu lịch sử mà còn hướng đến việc xây dựng nền tảng cho:
Behavioral Risk Scoring
Early Warning System
Risk-Based Lending
Portfolio Risk Management
Explainable AI trong tín dụng
Thông qua việc kết hợp SQL, Python, Machine Learning và các kỹ thuật Explainable AI, dự án cung cấp góc nhìn toàn diện về nguyên nhân hình thành rủi ro tín dụng cũng như các chiến lược quản trị danh mục phù hợp cho tổ chức tài chính.

CORE 1: PHÂN TÍCH NĂNG LỰC TÀI CHÍNH (CAPACITY ANALYSIS)
1. Mục tiêu phân tích
Core 1 tập trung đánh giá khả năng trả nợ thực tế của khách hàng thông qua mối quan hệ giữa thu nhập, nghĩa vụ nợ hiện tại và quy mô khoản vay. Thay vì sử dụng một chỉ tiêu tài chính đơn lẻ, phần phân tích xây dựng hệ thống đánh giá đa chiều nhằm xác định mức độ chịu đựng tài chính thực tế của từng khách hàng, các ngưỡng rủi ro bắt đầu xuất hiện dấu hiệu mất khả năng thanh toán, cũng như những nhóm khách hàng đặc biệt không tuân theo các quy luật tài chính truyền thống.

Thông qua hệ thống phân tích này, dự án trả lời bốn câu hỏi trọng tâm:
Khách hàng nào thực sự có đủ năng lực tài chính để trả nợ?
Những ngưỡng tài chính nào bắt đầu xuất hiện rủi ro vỡ nợ?
Những nhóm khách hàng nào cần được đánh giá riêng thay vì áp dụng cùng một tiêu chuẩn tín dụng?
Các chỉ số tài chính truyền thống như DTI, Income hay LTI có thực sự đủ sức dự báo nợ xấu hay không?

Cấu trúc phân tích Core 1
Core 1 bao gồm 7 nhóm phân tích, sử dụng:
📊 11 biểu đồ trực quan
Bar Chart
Boxplot
KDE Plot
Heatmap
Pareto Chart
🤖 2 phương pháp phân tích
Polynomial Regression
Correlation Analysis

Các chỉ số chính được xây dựng
DTI (Debt-to-Income)
Updated DTI
LTI (Loan-to-Income)
Specific LTI
Net Income
Income Per Dependent (IPD)
Education Level
Income × LTI
Portfolio Concentration
Bad Rate
Financial Risk Matrix

1.1 Phân tích nền tảng DTI (Debt-to-Income)
Biểu đồ sử dụng
📊 Bar Chart: Tỷ lệ nợ xấu theo từng khoảng DTI
Mục tiêu
Đánh giá tác động của áp lực nợ hiện tại lên khả năng trả nợ của khách hàng thông qua chỉ số:
DTI = Tổng nghĩa vụ nợ / Thu nhập 
Đây là chỉ tiêu nền tảng được sử dụng rộng rãi trong ngành tín dụng để đo lường mức độ gánh nặng tài chính của người vay.

Insight chính
Kết quả cho thấy tồn tại mối quan hệ thuận chiều rõ ràng giữa DTI và xác suất phát sinh nợ xấu.
Khi DTI gia tăng, tỷ lệ khách hàng mất khả năng thanh toán cũng tăng tương ứng. Điều này phản ánh áp lực tài chính ngày càng lớn khi phần thu nhập khả dụng dành cho nghĩa vụ nợ chiếm tỷ trọng cao hơn.
Tuy nhiên, dữ liệu cũng cho thấy nhiều ngoại lệ đáng chú ý:
Một bộ phận khách hàng có DTI thấp vẫn phát sinh nợ xấu.
Một số khách hàng có DTI cao vẫn duy trì khả năng thanh toán ổn định.
Điều này chứng minh rằng:
DTI là điều kiện cần nhưng chưa phải điều kiện đủ để giải thích rủi ro tín dụng.
Năng lực tài chính giải thích được một phần rủi ro, nhưng không thể phản ánh đầy đủ yếu tố hành vi và lịch sử tín dụng của khách hàng.

Giá trị quản trị
Biểu đồ giúp tổ chức tín dụng:
Xác định vùng DTI an toàn.
Xác định vùng cần giám sát.
Xác định các nhóm khách hàng cần bổ sung đánh giá hành vi thay vì chỉ dựa vào năng lực tài chính.

1.2 Biến thiên DTI theo trình độ học vấn
Biểu đồ sử dụng
📊 Boxplot: Education Level vs DTI
Mục tiêu
Đánh giá sự khác biệt về khả năng quản lý tài chính giữa các nhóm học vấn:
High School
Bachelor's
Master's
PhD
Qua đó kiểm tra liệu cùng một mức DTI nhưng các nhóm khách hàng khác nhau có mang cùng mức độ rủi ro hay không.
NHẬN ĐỊNH CHUNG: QUY LUẬT "ÁP LỰC NỢ TỈ LỆ THUẬN VỚI RỦI RO"

Quan sát tổng thể cho thấy ở tất cả các nhóm học vấn, phân phối DTI của nhóm nợ xấu luôn nằm cao hơn nhóm nợ tốt.
Phần lớn khách hàng duy trì DTI trong vùng 0.0–0.6.
Kết quả xác nhận quy luật nền tảng:
DTI càng cao, áp lực tài chính càng lớn và xác suất vỡ nợ càng tăng, bất kể nền tảng học vấn.
Tuy nhiên, mức độ nhạy cảm với DTI lại khác nhau đáng kể giữa các nhóm khách hàng.
Master's – Nhóm quản trị tài chính an toàn nhất
Thực trạng
Đây là nhóm sở hữu vùng phân phối DTI thấp nhất toàn bộ hệ thống.
Phần lớn khách hàng tập trung trong khoảng:
DTI ≈ 0.1 – 0.5
Ngay cả nhóm phát sinh nợ xấu cũng duy trì mức DTI thấp hơn đáng kể so với các nhóm học vấn còn lại.

Phân tích hành vi
Khách hàng trình độ Thạc sĩ thể hiện:
Kỷ luật tài chính cao.
Hạn chế sử dụng đòn bẩy quá mức.
Khả năng quản trị rủi ro cá nhân tốt.
Các khoản nợ xấu xuất hiện trong nhóm này thường có quy mô nhỏ và nhiều khả năng xuất phát từ các yếu tố khách quan thay vì mất khả năng thanh toán thực sự.

Ý nghĩa quản trị
Đây là phân khúc khách hàng chất lượng cao, phù hợp với các chương trình:
Pre-approved Credit
Premium Credit Card
Mortgage ưu đãi
Bachelor's – Nhóm tiêu dùng mạnh nhất

Thực trạng
Nhóm Cử nhân có vùng phân phối DTI rộng hơn đáng kể.
Mức DTI của nhóm nợ xấu tiệm cận:
DTI ≈ 0.5
Khoảng cách giữa nhóm nợ tốt và nợ xấu thể hiện rất rõ.

Phân tích hành vi
Nhóm này phản ánh xu hướng tiêu dùng hiện đại:
Sử dụng tín dụng tiêu dùng nhiều hơn.
Sẵn sàng vay để chi tiêu và mua sắm.
Phụ thuộc nhiều hơn vào đòn bẩy tài chính.
Khi DTI vượt ngưỡng:
DTI > 0.4
rủi ro chuyển đổi sang nợ xấu gia tăng rõ rệt.

Ý nghĩa quản trị
Cần xây dựng cơ chế:
Threshold Warning tại DTI = 0.4.
Debt Consolidation Program.
Risk-Based Pricing.
PhD – Nhóm đòn bẩy đặc biệt

Thực trạng
Mặc dù phần lớn khách hàng duy trì DTI thấp,
hệ thống ghi nhận mức DTI ngoại lệ cao nhất:
DTI = 2.323
Đây là nhóm xuất hiện nhiều outlier nhất toàn bộ hệ thống.

Phân tích hành vi
Các trường hợp này nhiều khả năng liên quan đến:
Đầu tư.
Kinh doanh.
Nghiên cứu.
Dự án dài hạn.
Khả năng thanh toán của họ không phản ánh đầy đủ qua thu nhập cố định.

Ý nghĩa quản trị
Không nên đánh giá nhóm này chỉ bằng DTI.
Cần kết hợp:
Cash Flow Analysis
Asset Verification
Investment Profile Assessment
High School – Rủi ro đại chúng

Thực trạng
Nhóm THPT sở hữu trung vị nợ xấu cao nhất.
Tuy nhiên xuất hiện ngoại lệ đáng chú ý:
DTI = 1.856
nhưng vẫn duy trì trạng thái trả nợ tốt.

Phân tích hành vi
Điều này phản ánh sự tồn tại của một bộ phận khách hàng:
Kinh doanh tự do.
Buôn bán nhỏ lẻ.
Thu nhập ngoài hệ thống.
Các nguồn thu này không được ghi nhận đầy đủ trong dữ liệu tín dụng truyền thống.

Ý nghĩa quản trị
Không nên từ chối tự động các hồ sơ DTI cao thuộc nhóm này.
Cần đánh giá thêm:
Bank Statement
Cash Flow thực tế
Thu nhập ngoài bảng lương

1.3 Phân tích DTI tổng thể và đòn bẩy tài chính
Biểu đồ sử dụng
📊 KDE Plot: Phân phối DTI theo trạng thái nợ
📊 Bar Chart: Tỷ lệ nợ xấu theo từng phân khúc LTI

Mục tiêu
Kiểm tra:
Khả năng phân tách rủi ro của DTI.
Tác động của đòn bẩy tài chính tới xác suất vỡ nợ.
Sự tồn tại của các phân khúc khách hàng đặc biệt.
Phân khúc DTI thấp: Vùng An toàn & Tâm lý Chiếm dụng (DTI < 0.4)

Thực trạng
Từ DTI = 0 đến khoảng 0.22, nhóm nợ xấu bất ngờ chiếm ưu thế và đạt đỉnh mật độ khoảng 1.4.
Từ vùng 0.22 đến 0.4, nợ tốt giành lại ưu thế trước khi suy giảm mạnh khi tiệm cận ngưỡng 40%.
Nguyên nhân
Xuất hiện hiện tượng:
DTI thấp nhưng vẫn phát sinh nợ xấu.
Nguyên nhân không nằm ở năng lực tài chính mà nằm ở:
Rủi ro hành vi.
Tâm lý chậm trả có chủ đích.
Chủ quan với các khoản nợ nhỏ.

Ý nghĩa quản trị
Không được Fast-track hoàn toàn chỉ vì khách hàng có DTI thấp.
Cần bổ sung:
CIC History
Behavioral Scoring
Early Reminder System
Phân khúc DTI trung bình: Vùng Trũng Số lượng (0.4 – 1.046)
Thực trạng
Mật độ khách hàng giảm mạnh.
Hai nhóm nợ tốt và nợ xấu bám sát nhau trong toàn bộ vùng phân phối.

Ý nghĩa
Các chính sách kiểm soát tín dụng truyền thống đang hoạt động tương đối hiệu quả tại khu vực này.
Phân khúc DTI cao: Vùng Đòn bẩy Đặc biệt (1.046 – 1.821)
Thực trạng
Xuất hiện một đỉnh phụ nổi bật của nhóm nợ tốt tại:
DTI ≈ 1.1 – 1.7

Nguyên nhân
Tồn tại nhóm khách hàng:
Có nguồn thu nhập ngoài hệ thống.
Kinh doanh cá thể.
Dòng tiền thực tế mạnh hơn dữ liệu thu nhập khai báo.
Ý nghĩa
Đây là nhóm khách hàng tiềm năng có thể bị đánh giá sai nếu chỉ sử dụng DTI.
Phân khúc DTI cực cao: Báo động đòn bẩy (DTI > 1.821)

Thực trạng
Nợ xấu chiếm ưu thế tuyệt đối.
Đỉnh rủi ro tập trung quanh:
DTI ≈ 2.0
Dải phân phối kết thúc tại:
DTI = 2.32

Nguyên nhân
Khách hàng gần như mất hoàn toàn khả năng kiểm soát đòn bẩy tài chính.
Xuất hiện hiện tượng:
Vay chéo.
Quá tải nghĩa vụ nợ.
Mất khả năng xoay vòng dòng tiền.

Ý nghĩa quản trị
Thiết lập:
Hard Stop Rule tại DTI > 1.7.
Special Collection Program.
Credit Freeze Policy.

1.4 Phân tích Thu nhập ròng (Net Income)
Biểu đồ sử dụng
📊 Bar Chart + Trendline
📊 Boxplot Outlier Detection
Mục tiêu
Đánh giá:
Tác động của thu nhập lên khả năng trả nợ.
Sự tồn tại của các nhóm ngoại lệ.
Trọng tâm phân tích
Kiểm tra hai nghịch lý:
Thu nhập cao nhưng vẫn nợ xấu.
Thu nhập thấp nhưng vẫn trả nợ tốt.
Qua đó đánh giá liệu Income có thực sự là biến dự báo mạnh hay không.

1.5 Đòn bẩy khoản vay cụ thể (Specific LTI)
Biểu đồ sử dụng
📊 Bar Chart
Mục tiêu
Đánh giá áp lực tài chính do từng khoản vay riêng lẻ tạo ra.
Khác với DTI phản ánh toàn bộ nghĩa vụ nợ, Specific LTI đo lường mức độ ảnh hưởng của một khoản vay mới đối với năng lực trả nợ hiện tại.
Giá trị quản trị
Giúp xác định:
Khoản vay nào đang tạo áp lực lớn nhất.
Ngưỡng khoản vay bắt đầu làm gia tăng xác suất nợ xấu.

1.6 Thu nhập trên đầu người phụ thuộc (Income Per Dependent)
Biểu đồ sử dụng
📊 Bar Chart
Mục tiêu
Đánh giá khả năng tài chính thực tế sau khi điều chỉnh theo quy mô hộ gia đình.
Ý nghĩa
Hai khách hàng có cùng thu nhập chưa chắc có cùng mức độ an toàn.
Khách hàng có nhiều người phụ thuộc sẽ có:
Thu nhập khả dụng thấp hơn.
Khả năng chống chịu tài chính yếu hơn.
Rủi ro thanh khoản cao hơn.

1.7 Ma trận tài chính & Độ nhạy rủi ro
Biểu đồ sử dụng
📊 Heatmap: Income × LTI
📊 Pareto Chart: Concentration of Bad Debt
Mục tiêu
Phân tích tương tác đa chiều giữa:
Thu nhập.
Đòn bẩy tài chính.
Xác suất nợ xấu.
Giá trị quản trị

Heatmap cho phép xác định:
Vùng khách hàng an toàn.
Vùng khách hàng rủi ro cao.
Các phân khúc cần ưu tiên kiểm soát tín dụng.

Pareto Chart giúp xác định:
Nhóm khách hàng tạo ra phần lớn tổn thất tín dụng.
Khu vực cần ưu tiên nguồn lực quản trị rủi ro.

Kết luận Core 1
Core 1 chứng minh rằng năng lực tài chính vẫn là nền tảng quan trọng trong đánh giá rủi ro tín dụng. Tuy nhiên, các chỉ số truyền thống như DTI, Income và LTI không đủ khả năng giải thích toàn bộ hiện tượng vỡ nợ. Dữ liệu cho thấy tồn tại nhiều trường hợp khách hàng có DTI thấp nhưng vẫn phát sinh nợ xấu do yếu tố hành vi, trong khi một số khách hàng có DTI rất cao vẫn duy trì khả năng thanh toán tốt nhờ nguồn thu nhập ngoài hệ thống. Những phát hiện này là tiền đề quan trọng cho Core 2, nơi trọng tâm phân tích được chuyển từ năng lực tài chính sang hành vi tín dụng, lịch sử thanh toán và các chỉ báo cảnh báo sớm nhằm xây dựng một hệ thống đánh giá rủi ro toàn diện hơn.

CORE 2: PHÂN TÍCH UY TÍN TÍN DỤNG & HÀNH VI KHÁCH HÀNG (CHARACTER ANALYSIS)

1. Mục tiêu phân tích
Nếu Core 1 tập trung đánh giá khả năng trả nợ (Capacity to Pay) thông qua thu nhập, nghĩa vụ nợ và đòn bẩy tài chính, thì Core 2 tập trung đánh giá ý chí trả nợ (Willingness to Pay) thông qua lịch sử tín dụng và hành vi thanh toán thực tế của khách hàng.

Trong thực tế, rất nhiều khách hàng:
Có thu nhập cao.
Có DTI thấp.
Có khả năng tài chính tốt.
Nhưng vẫn phát sinh nợ xấu.
Ngược lại, một số khách hàng:
Có DTI cao.
Có khoản vay lớn.
Có đòn bẩy tài chính cao.
Vẫn duy trì lịch sử thanh toán tốt trong thời gian dài.
Điều này cho thấy rủi ro tín dụng không chỉ xuất phát từ năng lực tài chính mà còn đến từ yếu tố hành vi, lịch sử tín dụng và mức độ tuân thủ nghĩa vụ trả nợ.

Core 2 được xây dựng nhằm trả lời các câu hỏi:
Credit Score hiện tại còn đáng tin cậy hay không?
Những yếu tố nào thực sự dự báo khả năng vỡ nợ?
Rủi ro tín dụng leo thang như thế nào theo hành vi khách hàng?
Có thể phát hiện khách hàng rủi ro trước khi họ thực sự vỡ nợ hay không?
Danh mục tín dụng đang tập trung rủi ro ở đâu?
Mô hình đánh giá rủi ro nên chuyển dịch theo hướng nào trong tương lai?

Nếu muốn đồng bộ với phong cách của Core 1 thì phần mở đầu của Core 2 nên chi tiết hơn rất nhiều, bao gồm:

Mục tiêu phân tích.
Vấn đề kinh doanh.
Câu hỏi nghiên cứu.
Hệ thống biểu đồ.
Hệ thống Machine Learning.
Giá trị quản trị.
Sau đó mới đi vào từng module.

Dưới đây là phiên bản README chuẩn hơn.

CORE 2: PHÂN TÍCH UY TÍN TÍN DỤNG & HÀNH VI KHÁCH HÀNG (CHARACTER ANALYSIS)
1. Mục tiêu phân tích

Nếu Core 1 tập trung đánh giá khả năng trả nợ (Capacity to Pay) thông qua thu nhập, nghĩa vụ nợ và đòn bẩy tài chính, thì Core 2 tập trung đánh giá ý chí trả nợ (Willingness to Pay) thông qua lịch sử tín dụng và hành vi thanh toán thực tế của khách hàng.

Trong thực tế, rất nhiều khách hàng:

Có thu nhập cao.
Có DTI thấp.
Có khả năng tài chính tốt.

Nhưng vẫn phát sinh nợ xấu.

Ngược lại, một số khách hàng:

Có DTI cao.
Có khoản vay lớn.
Có đòn bẩy tài chính cao.

Vẫn duy trì lịch sử thanh toán tốt trong thời gian dài.

Điều này cho thấy rủi ro tín dụng không chỉ xuất phát từ năng lực tài chính mà còn đến từ yếu tố hành vi, lịch sử tín dụng và mức độ tuân thủ nghĩa vụ trả nợ.

Core 2 được xây dựng nhằm trả lời các câu hỏi:

Credit Score hiện tại còn đáng tin cậy hay không?
Những yếu tố nào thực sự dự báo khả năng vỡ nợ?
Rủi ro tín dụng leo thang như thế nào theo hành vi khách hàng?
Có thể phát hiện khách hàng rủi ro trước khi họ thực sự vỡ nợ hay không?
Danh mục tín dụng đang tập trung rủi ro ở đâu?
Mô hình đánh giá rủi ro nên chuyển dịch theo hướng nào trong tương lai?

2. Vấn đề nghiên cứu
Hầu hết các hệ thống chấm điểm tín dụng truyền thống đều giả định rằng:
Khách hàng có Credit Score cao sẽ có xác suất vỡ nợ thấp hơn khách hàng có Credit Score thấp.
Tuy nhiên kết quả phân tích trên bộ dữ liệu thực tế lại cho thấy điều ngược lại.
Bad Rate gần như không thay đổi giữa các phân khúc Credit Score.
Khả năng phân tách giữa khách hàng tốt và khách hàng xấu gần như biến mất.

Trong khi đó, các biến hành vi như:
Previous_Defaults
Delinquency_Freq
Persistence Score
lại cho thấy sức mạnh dự báo vượt trội.
Do đó Core 2 tập trung kiểm chứng giả thuyết:
Liệu Behavioral Risk Scoring có hiệu quả hơn Credit Scoring truyền thống hay không?


3. Hệ thống phương pháp phân tích
Core 2 kết hợp giữa phân tích thống kê, Machine Learning và Explainable AI nhằm đánh giá toàn diện hành vi tín dụng của khách hàng.
Phân tích thống kê
Sử dụng để:
Phân khúc rủi ro.
Đo lường tỷ lệ nợ xấu.
Theo dõi quá trình dịch chuyển hành vi.
Đánh giá sự leo thang rủi ro.


Machine Learning
1, Random Forest
Mục tiêu:
Xác định biến nào thực sự tạo ra khả năng phân tách giữa khách hàng nợ tốt và nợ xấu.
2, ROC Curve – AUC Analysis
Mục tiêu:
Đánh giá sức mạnh dự báo của Credit Score.
3, Polynomial Regression
Mục tiêu:
Mô hình hóa quá trình leo thang rủi ro theo số lần quá hạn.
4, K-Means Clustering
Mục tiêu:
Phân nhóm khách hàng theo đặc điểm hành vi.
5, Principal Component Analysis (PCA)
Mục tiêu:
Giảm chiều dữ liệu và trực quan hóa các Behavioral Persona.
6, XGBoost
Mục tiêu:
Xây dựng mô hình dự báo xác suất vỡ nợ.
7, SHAP (SHapley Additive exPlanations)
Mục tiêu:
Giải thích quyết định của mô hình.
Xác định biến nào thực sự ảnh hưởng đến xác suất nợ xấu.

4. Hệ thống trực quan hóa
Core 2 sử dụng tổng cộng:
📊 14 biểu đồ phân tích
Bad Rate Segmentation
KDE Distribution
ROC Curve
Feature Importance
Interaction Heatmap
Behavioral Heatmap
Transition Matrix
Delinquency Escalation Curve
Early Warning Matrix
Purpose–Behavior Scatter Plot
PCA Scatter Plot
Treemap Portfolio Analysis
Bubble Chart Portfolio Analysis
SHAP Summary Plot

5. Giá trị quản trị
Core 2 được xây dựng nhằm giải quyết ba bài toán quản trị rủi ro lớn nhất:
Bài toán 1: Credit Score mất hiệu lực
Kiểm tra liệu hệ thống chấm điểm hiện tại có còn phản ánh đúng rủi ro hay không.
Bài toán 2: Phát hiện rủi ro trước khi vỡ nợ
Xây dựng hệ thống Early Warning dựa trên hành vi thực tế thay vì chỉ dựa vào thông tin lúc giải ngân.
Bài toán 3: Tối ưu hóa danh mục tín dụng
Xác định:
Nhóm khách hàng nên mở rộng.
Nhóm khách hàng cần kiểm soát.
Nhóm khách hàng cần tái cấu trúc hoặc hạn chế cấp tín dụng.

2.1 ĐÁNH GIÁ SỨC MẠNH CỦA CREDIT SCORE (CREDIT SCORE POWER ANALYSIS)
Biểu đồ và mô hình sử dụng
📊 Bad Rate Segmentation
Đánh giá tỷ lệ nợ xấu theo từng phân khúc điểm tín dụng.
📊 KDE Distribution
So sánh phân phối Credit Score giữa nhóm nợ tốt và nợ xấu.
📊 ROC Curve
Đánh giá khả năng phân tách rủi ro.
🤖 ROC – AUC Analysis
Đo lường sức mạnh dự báo thực tế của Credit Score.
🤖 Gini Coefficient
Đánh giá mức độ phân biệt giữa khách hàng tốt và khách hàng xấu.

Mục tiêu phân tích
Credit Score là nền tảng của hầu hết các hệ thống chấm điểm tín dụng truyền thống.
Nếu Credit Score hoạt động hiệu quả, khách hàng có điểm cao phải có xác suất vỡ nợ thấp hơn đáng kể so với khách hàng có điểm thấp.
Mục tiêu của phần phân tích này là kiểm định liệu Credit Score hiện tại còn giữ được năng lực dự báo hay không.

Insight 1: Credit Score mất hoàn toàn khả năng phân tách rủi ro
KDE Distribution cho thấy phân phối Credit Score của nhóm nợ tốt và nhóm nợ xấu gần như chồng lấp hoàn toàn lên nhau.
Không tồn tại ngưỡng điểm tín dụng rõ ràng giúp phân biệt hai nhóm khách hàng.
Điều này cho thấy:
Credit Score không còn phản ánh chính xác mức độ rủi ro thực tế của khách hàng

Insight 2: AUC chỉ đạt 0.4915 và Gini = -0.0171
Kết quả ROC Analysis cho thấy:
AUC = 0.4915
Gini = -0.0171
Một mô hình hiệu quả thường có:
AUC > 0.7
Gini > 0.4
Tuy nhiên kết quả hiện tại còn thấp hơn cả mức đoán ngẫu nhiên (Random Guessing).
Điều này chứng minh Credit Score gần như không còn giá trị dự báo trong danh mục hiện tại.

Insight 3: Bad Rate bão hòa ở mọi phân khúc điểm

Tỷ lệ nợ xấu duy trì quanh mức:67%, 68%, 68.4%
ở gần như toàn bộ các phân khúc Credit Score.
Không tồn tại vùng điểm:
An toàn rõ rệt.
Rủi ro rõ rệt.
Điều này khiến mọi ngưỡng Cut-off truyền thống mất hiệu lực.

Insight 4: Scorecard truyền thống đã lỗi thời
Ba kết quả:
KDE chồng lấp mạnh.
AUC ≈ 0.5.
Bad Rate bão hòa.
đều dẫn tới cùng một kết luận:
Scorecard hiện tại không còn khả năng phân tách rủi ro.
Các biến tài chính tĩnh và lịch sử tín dụng truyền thống đang bỏ sót phần lớn tín hiệu hành vi của khách hàng.

Giá trị quản trị
Core 2.1 là bước khởi đầu cho toàn bộ hệ thống Behavioral Risk Analysis.
Kết quả phân tích chứng minh rằng mô hình Credit Scoring truyền thống cần được thay thế hoặc bổ sung bằng các biến hành vi như:
Previous_Defaults
Delinquency_Freq
Persistence Score
để xây dựng một hệ thống Behavioral Risk Scoring có khả năng dự báo rủi ro tốt hơn trong thực tế.

2.2 PHÂN TÍCH HÀNH VI RỦI RO NÂNG CAO
Mục tiêu phân tích
Sau khi xác định rằng Credit Score truyền thống gần như mất khả năng phân tách rủi ro, Core 2 chuyển sang một câu hỏi quan trọng hơn: biến nào trong hành vi tín dụng mới thực sự dự báo được nợ xấu.
Phần này tập trung vào các chỉ báo hành vi có tính động và có khả năng phản ánh sự suy giảm chất lượng

tín dụng theo thời gian, bao gồm:
Previous_Defaults
Delinquency_Freq
Persistence Score
Loan Purpose
LTI
Behavioral Transition
Customer Persona

Mục tiêu cuối cùng là xây dựng một lớp phân tích hành vi có thể phát hiện sớm rủi ro, thay vì chỉ ghi nhận khách hàng đã rơi vào trạng thái nợ xấu.

2.2.1 Ma trận dịch chuyển hành vi (Behavioral Transition)
Biểu đồ sử dụng

📊 Heatmap: Historical Grade vs Current Grade

Mục tiêu
Đánh giá xem nhóm khách hàng được xếp hạng tốt ở giai đoạn ban đầu có còn giữ được trạng thái an toàn trong thực tế hay không.

Insight chính
Kết quả cho thấy một sự dịch chuyển rất đáng báo động: khách hàng từ mọi nhóm ban đầu như Excellent, Good và Medium đều có xu hướng dịch chuyển mạnh sang nhóm High Risk, với tỷ lệ dao động quanh 61.8% – 62.9%.
Điều này cho thấy rằng xếp hạng tín dụng ban đầu không còn phản ánh đúng trạng thái rủi ro hiện tại nếu không được đánh giá lại định kỳ. Một khách hàng có thể bắt đầu từ nhóm an toàn, nhưng theo thời gian hành vi thanh toán suy giảm khiến họ nhanh chóng trượt sang nhóm rủi ro cao.

Giá trị quản trị
Biểu đồ này cho thấy tổ chức tín dụng không thể chỉ dựa vào điểm tín dụng ban đầu tại thời điểm giải ngân. Cần có cơ chế:
Dynamic Re-assessment
Periodic Review
Behavioral Monitoring
để phát hiện sớm sự suy thoái hành vi trước khi khách hàng trở thành nợ xấu chính thức.

2.2.2 Đường cong leo thang rủi ro (Delinquency Escalation)
Biểu đồ sử dụng

📊 Line Chart: Tỷ lệ nợ xấu theo số lần quá hạn

Mục tiêu
Xác định ngưỡng số lần quá hạn bắt đầu kích hoạt sự bùng phát rủi ro.

Insight chính
Phân tích cho thấy tồn tại một Explosion Threshold rất rõ tại mức Delinquency_Freq = 2. Trước ngưỡng này, rủi ro còn có thể kiểm soát; nhưng khi khách hàng bắt đầu xuất hiện lần quá hạn thứ hai, tỷ lệ vỡ nợ tăng mạnh và hành vi trả nợ bước vào trạng thái mất kiểm soát.
Điều này chứng minh rằng quá hạn không phải là một hiện tượng ngẫu nhiên đơn lẻ. Một lần quá hạn có thể là sự cố tạm thời, nhưng hai lần quá hạn liên tiếp đã phản ánh xu hướng suy giảm thực sự của kỷ luật thanh toán và khả năng xoay vòng dòng tiền.

Giá trị quản trị
Từ kết quả này, hệ thống tín dụng cần thiết lập ngưỡng xử lý tự động khi khách hàng đạt mức Delinquency_Freq ≥ 2, bao gồm:
Đưa vào Watchlist
Dừng cấp tín dụng mới
Tăng cường giám sát thanh toán
Kích hoạt quy trình cảnh báo sớm

2.2.3 Độ lì hành vi & cảnh báo sớm (Persistence & Early Warning)
Biểu đồ sử dụng

📊 Heatmap Matrix: Persistence Score vs LTI Tier
📊 Scatter Plot: Mục đích vay vs Persistence Score

Mục tiêu
Đánh giá mức độ “lì rủi ro” của khách hàng, tức là khả năng duy trì hành vi trả nợ xấu lặp lại theo thời gian, và xác định ngưỡng cảnh báo sớm có thể dự báo gần như chắc chắn khả năng vỡ nợ.

Insight chính
Phân tích ma trận cho thấy:
Nhóm Persistence 0–1 là nhóm an toàn nhất.
Nhóm Persistence 2–3 cho thấy rủi ro tăng mạnh.
Nhóm Persistence 4–7 là vùng cảnh báo đỏ, với xác suất vỡ nợ tiến gần 100% ở mọi mức đòn bẩy tài chính.
Điểm quan trọng nhất của phần này là: khi Persistence Score đạt tới ngưỡng cao, yếu tố đòn bẩy tài chính gần như không còn đủ sức giải thích rủi ro nữa. Hành vi lặp lại đã trở thành biến số quyết định.
Ở góc độ mục đích vay, nhóm Personal có Persistence thấp nhất và tỷ lệ nợ xấu thấp nhất, trong khi nhóm Business nằm ở mức trung bình do dòng tiền có tính biến động. Ngược lại, nhóm Auto và Home có Persistence cao nhất và tỷ lệ nợ xấu vượt xa mức trung bình hệ thống, phản ánh áp lực trả nợ dài hạn và sự mệt mỏi trong hành vi thanh toán.

Giá trị quản trị
Persistence Score trở thành một Early Warning Indicator rất mạnh. Đây là biến nên được đưa vào hệ thống chấm điểm động và cảnh báo sớm, đặc biệt cho các khoản vay dài hạn có giá trị lớn.


2.2.4 Phân cụm chân dung hành vi (Behavioral Persona Clustering)
Biểu đồ và mô hình sử dụng

🤖 PCA (Principal Component Analysis)
🤖 K-Means Clustering
📊 PCA Scatter Plot

Mục tiêu
Khám phá những nhóm khách hàng có hành vi tài chính tương đồng để từ đó chia tệp tín dụng thành các Behavioral Persona rõ ràng thay vì xử lý cào bằng toàn bộ danh mục.

Insight chính
Kết quả phân cụm cho thấy ba nhóm khách hàng có chân dung rất khác nhau:
Cluster 0 – Nhóm khách hàng cốt lõi / an toàn
Đây là nhóm có hành vi ổn định nhất, thường đi kèm DTI thấp, Persistence thấp và rủi ro vỡ nợ thấp. Họ là nhóm phù hợp để duy trì, mở rộng hạn mức hoặc triển khai cross-sell.

Cluster 1 – Nhóm rủi ro cao
Đây là nhóm chịu áp lực nợ dài hạn, Persistence cao và có xác suất vỡ nợ lớn. Họ cần được giám sát đặc biệt và ưu tiên đưa vào cảnh báo sớm.

Cluster 2 – Nhóm chuyển tiếp
Đây là nhóm nằm giữa hai thái cực an toàn và rủi ro. Nếu không được can thiệp kịp thời, họ có thể dịch chuyển dần sang vùng rủi ro cao.
Giá trị quản trị
Phân cụm hành vi cho phép tổ chức tín dụng:
Xây dựng chiến lược quản trị riêng cho từng nhóm khách hàng.
Nhận diện sớm nhóm có nguy cơ xấu đi.
Tối ưu hóa chính sách giữ chân và phục hồi nhóm khách hàng còn khả năng cải thiện.

2.2.5 Rủi ro tập trung dư nợ (Portfolio Concentration)
Biểu đồ sử dụng

📊 Treemap
📊 Bubble Chart

Mục tiêu
Đánh giá mức độ tập trung dư nợ và rủi ro trong danh mục tín dụng, từ đó xác định vùng nào đang tạo ra giá trị, vùng nào đang tạo ra tổn thất.

Insight chính
Kết quả Treemap và Bubble Chart cho thấy phân khúc Personal – Low Risk là một trong những động lực tăng trưởng quan trọng nhất của danh mục. Đây là nhóm có quy mô lớn nhưng tỷ lệ nợ xấu thấp, nên vừa mang lại dư nợ tốt vừa kiểm soát rủi ro hiệu quả.
Ngược lại, phân khúc Personal – High Risk lại là vùng rủi ro đáng báo động, với tỷ lệ nợ xấu vượt 80%. Dù quy mô không lớn nhất, nhóm này tạo ra tác động tiêu cực rất mạnh đến chất lượng danh mục tổng thể.
Ở cấp độ phân bổ lớn hơn, các phân khúc Home và Business thường tập trung dư nợ lớn và giữ vai trò chiến lược trong doanh thu, nhưng đi kèm áp lực quản trị rủi ro cao hơn.

Giá trị quản trị
Core này giúp xác định:
Nhóm khách hàng nào là động cơ tăng trưởng.
Nhóm nào là vùng rủi ro tập trung.
Danh mục nên được dịch chuyển về đâu để tối ưu hóa giữa tăng trưởng và an toàn.

2.3 Phân tích mục đích vay (Loan Purpose Analysis)
Biểu đồ sử dụng

📊 Scatter Plot
📊 Bar Chart
📊 Risk Comparison Chart

Mục tiêu
Đánh giá rủi ro theo bản chất khoản vay, từ đó xem xét mục đích sử dụng vốn có làm thay đổi cấu trúc hành vi và khả năng vỡ nợ hay không.

Insight chính
Phân tích cho thấy:
Personal là nhóm rủi ro thấp nhất.
Business là nhóm rủi ro trung bình, phụ thuộc nhiều vào dòng tiền và hiệu quả vận hành kinh doanh.
Auto và Home là hai nhóm có rủi ro cao nhất do gắn với khoản vay dài hạn, quy mô lớn và áp lực trả nợ kéo dài.
Điều này phản ánh rằng rủi ro tín dụng không chỉ phụ thuộc vào khả năng tài chính của khách hàng, mà còn phụ thuộc vào bản chất khoản vay và mục tiêu sử dụng vốn.

Giá trị quản trị
Kết quả này cho thấy hệ thống tín dụng cần phân biệt rõ giữa:
Khoản vay tiêu dùng nhỏ, dễ kiểm soát.
Khoản vay kinh doanh có tính chu kỳ.
Khoản vay tài sản lớn có áp lực dài hạn.
Từ đó có thể thiết kế chính sách thẩm định và giám sát riêng cho từng nhóm sản phẩm.

Kết luận Core 2
Core 2 chứng minh rằng rủi ro tín dụng không thể được giải thích đầy đủ chỉ bằng Credit Score hay các chỉ số tài chính tĩnh. Thay vào đó, các biến hành vi như Previous_Defaults, Delinquency_Freq và Persistence Score mới là những chỉ báo dự báo mạnh nhất. Các phân tích cho thấy khách hàng có hành vi xấu lặp lại thường dịch chuyển nhanh sang vùng rủi ro cao, trong khi các nhóm có lịch sử thanh toán tốt và hành vi ổn định duy trì khả năng kiểm soát rủi ro tốt hơn.

Từ đó, dự án đề xuất chuyển dịch từ Traditional Credit Scoring sang Behavioral Risk Scoring, kết hợp Early Warning System, Behavioral Monitoring và Explainable AI để xây dựng một hệ thống quản trị rủi ro tín dụng hiện đại và sát với thực tế hơn.

Sau khi hoàn thành hai trụ cột đầu tiên là Capacity Analysis và Character Analysis, dự án đã xây dựng được nền tảng đánh giá rủi ro tín dụng dựa trên cả năng lực tài chính và hành vi khách hàng. Kết quả phân tích cho thấy các chỉ tiêu tài chính truyền thống như DTI, Income hay Credit Score chỉ phản ánh một phần bức tranh rủi ro, trong khi các biến hành vi như Previous_Defaults, Delinquency_Freq và Persistence Score mới là những yếu tố có khả năng dự báo mạnh nhất đối với xác suất vỡ nợ.

Tuy nhiên, để hoàn thiện đầy đủ framework 4C of Credit, dự án vẫn cần tiếp tục mở rộng sang hai khía cạnh quan trọng còn lại là Stability Analysis và Collateral Analysis. Đây là hai lớp phân tích giúp đánh giá mức độ bền vững của nguồn trả nợ trong dài hạn cũng như khả năng bảo toàn vốn khi rủi ro tín dụng xảy ra.

Trong các giai đoạn tiếp theo, dự án sẽ tập trung xây dựng Core 3 nhằm phân tích tính ổn định của khách hàng thông qua nghề nghiệp, thời gian công tác, cấu trúc thu nhập và các yếu tố nhân khẩu học; đồng thời phát triển Core 4 để đánh giá hiệu quả của tài sản bảo đảm, tỷ lệ Loan-to-Value (LTV) và mức độ tổn thất kỳ vọng khi khách hàng mất khả năng thanh toán. Việc hoàn thiện hai core này sẽ giúp hệ thống chuyển từ một mô hình đánh giá hành vi và năng lực tài chính sang một nền tảng quản trị rủi ro tín dụng toàn diện theo chuẩn 4C of Credit.

CORE 3: PHÂN TÍCH TÍNH ỔN ĐỊNH TÀI CHÍNH (STABILITY ANALYSIS)
Mục tiêu phân tích
Sau khi đánh giá năng lực tài chính (Core 1) và hành vi tín dụng (Core 2), Core 3 tập trung vào câu hỏi:
Khách hàng có duy trì được khả năng trả nợ trong dài hạn hay không?
Một khách hàng có thể:
Thu nhập cao.
Credit Score tốt.
Không có lịch sử nợ xấu.
Nhưng vẫn có thể trở thành khách hàng rủi ro nếu nguồn thu nhập không ổn định hoặc nghề nghiệp có tính biến động cao.
Do đó, Core 3 được xây dựng nhằm đánh giá tính bền vững của dòng tiền và khả năng chống chịu trước các cú sốc tài chính trong tương lai.

Các vấn đề nghiên cứu
Core 3 sẽ tập trung trả lời các câu hỏi:
Nghề nghiệp nào có tỷ lệ nợ xấu cao nhất?
Mức độ ổn định công việc ảnh hưởng thế nào đến khả năng trả nợ?
Số năm làm việc có giúp giảm rủi ro tín dụng không?
Khách hàng có thu nhập tương đương nhưng khác ngành nghề có mức rủi ro giống nhau hay không?
Có tồn tại những nhóm khách hàng dễ tổn thương trước suy thoái kinh tế hay không?

Hướng phân tích dự kiến
3.1 Employment Stability Analysis
Đánh giá:
Employment Status
Years of Employment
Mục tiêu:
Xác định mối liên hệ giữa sự ổn định nghề nghiệp và tỷ lệ nợ xấu.
3.2 Income Sustainability Analysis
Đánh giá:
Khả năng duy trì thu nhập
Tính bền vững của dòng tiền
Mục tiêu:
Phát hiện các nhóm khách hàng có nguy cơ suy giảm năng lực tài chính trong tương lai.
3.3 Demographic Stability Analysis
Đánh giá:
Tuổi
Tình trạng hôn nhân
Số người phụ thuộc
Mục tiêu:
Xác định các đặc điểm nhân khẩu học có liên hệ với rủi ro tín dụng.
3.4 Stability Risk Segmentation
Phân nhóm khách hàng thành:
Stable
Moderate Risk
Vulnerable
High Vulnerability
Mục tiêu:
Xây dựng hệ thống phân tầng rủi ro dựa trên mức độ ổn định tài chính.

Giá trị kỳ vọng
Core 3 sẽ bổ sung một lớp đánh giá mới:
Không chỉ khách hàng hiện tại có khả năng trả nợ hay không, mà còn đánh giá khả năng duy trì điều đó trong tương lai.
Đây là nền tảng cho các mô hình:
Stress Testing
Early Warning
Long-term Risk Monitoring

CORE 4: PHÂN TÍCH TÀI SẢN BẢO ĐẢM (COLLATERAL ANALYSIS)
Mục tiêu phân tích
Core 4 tập trung vào lớp bảo vệ cuối cùng của hệ thống tín dụng:
Nếu khách hàng mất khả năng trả nợ, tổ chức tín dụng có thể thu hồi được bao nhiêu vốn?
Khác với Core 1, Core 2 và Core 3 tập trung vào xác suất vỡ nợ, Core 4 đánh giá:
Mức độ tổn thất.
Khả năng thu hồi.
Chất lượng tài sản bảo đảm.

Các vấn đề nghiên cứu
Core 4 sẽ tập trung trả lời các câu hỏi:
Loại tài sản nào giúp giảm thiểu tổn thất tốt nhất?
Giá trị tài sản bảo đảm ảnh hưởng thế nào đến xác suất nợ xấu?
Tỷ lệ khoản vay trên tài sản (LTV) có phản ánh đúng mức độ rủi ro hay không?
Những khoản vay nào đang thiếu mức bảo vệ cần thiết?
Danh mục tín dụng hiện tại có đang tập trung quá nhiều vào các khoản vay không có tài sản bảo đảm hay không?

Hướng phân tích dự kiến
4.1 Loan-to-Value Analysis (LTV)
Đánh giá:
Loan Amount
Collateral Value
Mục tiêu:
Xác định mức độ đòn bẩy trên tài sản bảo đảm.
4.2 Collateral Quality Analysis
Đánh giá:
Chất lượng tài sản
Khả năng thanh khoản
Mục tiêu:
Xác định giá trị thu hồi thực tế khi xảy ra nợ xấu.
4.3 Recovery Potential Analysis
Đánh giá:
Khả năng thu hồi vốn
Mức độ tổn thất kỳ vọng
Mục tiêu:
Ước lượng Loss Given Default (LGD).
4.4 Portfolio Protection Analysis
Đánh giá:
Tỷ lệ khoản vay có tài sản bảo đảm
Tỷ lệ khoản vay tín chấp
Mức độ bao phủ tài sản
Mục tiêu:
Đo lường sức chống chịu của toàn bộ danh mục tín dụng.
