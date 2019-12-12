.class Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/MyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000009"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;)Lcom/example/WiFiPasswordSearcher/MyActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 25
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
    .line 426
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v15, v3

    check-cast v15, Landroid/widget/LinearLayout;

    move-object v8, v15

    .line 427
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/example/WiFiPasswordSearcher/MyActivity;->lastWiFiClickItem:Landroid/widget/LinearLayout;

    .line 429
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object/from16 v16, v8

    const-string v17, "BSSID"

    invoke-static/range {v15 .. v17}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$1000030(Lcom/example/WiFiPasswordSearcher/MyActivity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v15

    move-object v9, v15

    .line 430
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object/from16 v16, v8

    const-string v17, "ESSID"

    invoke-static/range {v15 .. v17}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$1000030(Lcom/example/WiFiPasswordSearcher/MyActivity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v15

    move-object v10, v15

    .line 432
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v11, v15

    .line 434
    move-object v15, v11

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 435
    move-object v15, v10

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 436
    move-object v15, v9

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v13, v15

    .line 438
    move-object v15, v11

    invoke-static {}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$L1000022()[Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    move-object/from16 v19, v1

    move-wide/from16 v20, v5

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    invoke-direct/range {v18 .. v23}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 600
    move-object v15, v11

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v15

    return-void
.end method
