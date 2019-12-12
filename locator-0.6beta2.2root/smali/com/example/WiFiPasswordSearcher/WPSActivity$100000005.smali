.class Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;
.super Ljava/lang/Object;
.source "WPSActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WPSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

.field private final val$BSSDWps:Ljava/lang/String;

.field private final val$ESSDWps:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WPSActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->val$BSSDWps:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->val$ESSDWps:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;)Lcom/example/WiFiPasswordSearcher/WPSActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 222
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v1

    iget-object v14, v14, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v12

    .line 223
    move-object v12, v1

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v9, v12

    .line 224
    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    if-ne v12, v13, :cond_0

    .line 225
    const-string v12, "<empty>"

    move-object v9, v12

    .line 226
    :cond_0
    move-object v12, v8

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Selected pin: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 227
    move v12, v4

    move v10, v12

    .line 229
    move-object v12, v8

    invoke-static {}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000008()[Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->val$BSSDWps:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v18, v10

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;->val$ESSDWps:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005$100000004;-><init>(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 287
    move-object v12, v8

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v12

    return-void
.end method
