require "rails_helper"

RSpec.describe Content, type: :model do
  describe "validation" do
    subject { content.valid? }

    context "データが条件を満たす時" do
      let(:content) { build(:content) }
      it "保存ができる" do
        expect(subject).to eq true
      end
    end

    describe "title" do
      context "入力さていない時" do
        let(:content) { build(:content, title: "") }

        it "保存ができない" do
          expect(subject).to eq false
          expect(content.errors[:title]).to include "を入力してください"
        end
      end

      context "16文字以上の場合" do
        let(:content) { build(:content, title: "1" * 17) }
        it "保存ができない" do
          expect(subject).to eq false
          expect(content.errors.messages[:title]).to include "は16文字以内で入力してください"
        end
      end

      describe "subtitle" do
        context "入力さていない時" do
          let(:content) { build(:content, subtitle: "") }
          it "保存ができない" do
            expect(subject).to eq false
            expect(content.errors[:subtitle]).to include "を入力してください"
          end
        end

        context "32文字以上の場合" do
          let(:content) { build(:content, subtitle: "1" * 33) }
          it "保存ができない" do
            expect(subject).to eq false
            expect(content.errors.messages[:subtitle]).to include "は32文字以内で入力してください"
          end
        end
      end

      describe "comment" do
        context "入力さていない時" do
          let(:content) { build(:content, comment: "") }
          it "保存ができない" do
            expect(subject).to eq false
            expect(content.errors[:comment]).to include "を入力してください"
          end
        end

        context "32文字以上の場合" do
          let(:content) { build(:content, comment: "1" * 33) }
          it "保存ができない" do
            expect(subject).to eq false
            expect(content.errors.messages[:comment]).to include "は32文字以内で入力してください"
          end
        end
      end

      describe "point" do
        context "入力さていない時" do
          let(:content) { build(:content, point: "") }

          it "保存ができない" do
            expect(subject).to eq false
            expect(content.errors[:point]).to include "を入力してください"
          end
        end

        context "32文字以上の場合" do
          let(:content) { build(:content, point: "1" * 33) }
          it "保存ができない" do
            expect(subject).to eq false
            expect(content.errors.messages[:point]).to include "は32文字以内で入力してください"
          end
        end
      end

      describe "content_delete" do
        context "contentが削除された時" do
          xit "紐づいている情報も削除される" do
            # 材料
            # 作り方
          end
        end
      end
    end
  end
end
