.class public Lcom/example/WiFiPasswordSearcher/MyAdapterWps;
.super Landroid/widget/BaseAdapter;
.source "MyAdapterWps.java"


# instance fields
.field context:Landroid/content/Context;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/example/WiFiPasswordSearcher/ItemWps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/example/WiFiPasswordSearcher/ItemWps;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Landroid/widget/BaseAdapter;-><init>()V

    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;->data:Ljava/util/ArrayList;

    .line 15
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 16
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;->data:Ljava/util/ArrayList;

    .line 18
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;->data:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/example/WiFiPasswordSearcher/ItemWps;

    move-object v0, v3

    return-object v0
.end method

.method public getItemId(I)J
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move v1, p1

    move v3, v1

    int-to-long v3, v3

    move-wide v0, v3

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v11, v0

    iget-object v11, v11, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;->context:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    move-object v5, v11

    .line 44
    move-object v11, v2

    if-nez v11, :cond_0

    .line 45
    move-object v11, v5

    const v12, 0x7f030002

    move-object v13, v3

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    move-object v2, v11

    .line 48
    :cond_0
    move-object v11, v2

    const v12, 0x7f070006

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object v6, v11

    .line 49
    move-object v11, v2

    const v12, 0x7f070007

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object v7, v11

    .line 50
    move-object v11, v2

    const v12, 0x7f070008

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object v8, v11

    .line 51
    move-object v11, v2

    const v12, 0x7f070009

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object v9, v11

    .line 53
    move-object v11, v6

    move-object v12, v0

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;->data:Ljava/util/ArrayList;

    move v13, v1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/example/WiFiPasswordSearcher/ItemWps;

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/ItemWps;->pin:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    move-object v11, v7

    move-object v12, v0

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;->data:Ljava/util/ArrayList;

    move v13, v1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/example/WiFiPasswordSearcher/ItemWps;

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/ItemWps;->metod:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    move-object v11, v8

    move-object v12, v0

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;->data:Ljava/util/ArrayList;

    move v13, v1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/example/WiFiPasswordSearcher/ItemWps;

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/ItemWps;->score:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    move-object v11, v9

    move-object v12, v0

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;->data:Ljava/util/ArrayList;

    move v13, v1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/example/WiFiPasswordSearcher/ItemWps;

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/ItemWps;->db:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    move-object v11, v2

    move-object v0, v11

    return-object v0
.end method
