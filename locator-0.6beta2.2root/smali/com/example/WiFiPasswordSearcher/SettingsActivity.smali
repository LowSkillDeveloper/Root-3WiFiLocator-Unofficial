.class public Lcom/example/WiFiPasswordSearcher/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;
    }
.end annotation


# instance fields
.field private GeneralListOnClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private GeneralListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->GeneralListView:Landroid/widget/ListView;

    move-object v2, v0

    new-instance v3, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;-><init>(Lcom/example/WiFiPasswordSearcher/SettingsActivity;)V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->GeneralListOnClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    const-string v7, "com.aide.ui"

    invoke-static {v6, v7}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    move-object v6, v0

    const v7, 0x7f030007

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->setContentView(I)V

    .line 21
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f070024

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->GeneralListView:Landroid/widget/ListView;

    .line 23
    move-object v6, v0

    invoke-virtual {v6}, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f060000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 24
    new-instance v6, Landroid/widget/ArrayAdapter;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const v9, 0x1090003

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v4, v6

    .line 25
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->GeneralListView:Landroid/widget/ListView;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->GeneralListView:Landroid/widget/ListView;

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->GeneralListOnClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
