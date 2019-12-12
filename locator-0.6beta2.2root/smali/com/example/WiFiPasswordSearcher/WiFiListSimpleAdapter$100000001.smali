.class Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001$100000000;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;)Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v13, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    if-eqz v13, :cond_0

    sget-object v13, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    if-ne v13, v14, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    move-object v13, v2

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object v4, v13

    .line 226
    move-object v13, v4

    const v14, 0x7f070015

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object v5, v13

    .line 227
    move-object v13, v5

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v6, v13

    .line 229
    sget-object v13, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    move v14, v6

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/example/WiFiPasswordSearcher/APData;

    iget-object v13, v13, Lcom/example/WiFiPasswordSearcher/APData;->Keys:Ljava/util/ArrayList;

    move-object v7, v13

    .line 230
    sget-object v13, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    move v14, v6

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/example/WiFiPasswordSearcher/APData;

    iget-object v13, v13, Lcom/example/WiFiPasswordSearcher/APData;->WPS:Ljava/util/ArrayList;

    move-object v8, v13

    .line 232
    move-object v13, v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_2

    goto :goto_0

    .line 234
    :cond_2
    move-object v13, v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    move-object v9, v13

    .line 236
    const/4 v13, 0x0

    move v10, v13

    :goto_1
    move v13, v10

    move-object v14, v9

    array-length v14, v14

    if-lt v13, v14, :cond_3

    .line 247
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    invoke-static {v15}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->access$L1000000(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v10, v13

    .line 248
    move-object v13, v10

    const-string v14, "Choose key:"

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 249
    move-object v13, v10

    move-object v14, v9

    new-instance v15, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001$100000000;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v1

    move/from16 v18, v6

    invoke-direct/range {v16 .. v18}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001$100000000;-><init>(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;I)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 253
    move-object v13, v10

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v13

    goto/16 :goto_0

    .line 238
    :cond_3
    move-object v13, v8

    move v14, v10

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v11, v13

    .line 239
    move-object v13, v11

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 240
    move-object v13, v9

    move v14, v10

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Key: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->access$1000003(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 236
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 243
    :cond_4
    move-object v13, v9

    move v14, v10

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Key: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v18 .. v19}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->access$1000003(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, " WPS: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    move-object/from16 v16, v0

    move-object/from16 v17, v11

    invoke-static/range {v16 .. v17}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->access$1000003(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    goto :goto_2
.end method
