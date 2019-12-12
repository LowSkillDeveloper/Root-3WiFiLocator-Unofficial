.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mIndex:I

.field mInstance:Landroid/support/v4/app/Fragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/support/v4/app/FragmentState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/app/FragmentState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 76
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 77
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mIndex:I

    .line 78
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    .line 79
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    .line 80
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mContainerId:I

    .line 81
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    .line 83
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mDetached:Z

    .line 84
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 85
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 86
    return-void

    .line 78
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 82
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 83
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 65
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mIndex:I

    .line 66
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    .line 67
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    .line 68
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mContainerId:I

    .line 69
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    .line 70
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    .line 71
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mDetached:Z

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mDetached:Z

    .line 72
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 8

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 90
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v0, v3

    .line 116
    :goto_0
    return-object v0

    .line 93
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 94
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 97
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-static {v4, v5, v6}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 99
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 100
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 101
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 103
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mIndex:I

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 104
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 105
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mRestored:Z

    .line 106
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    iput v4, v3, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 107
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mContainerId:I

    iput v4, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 108
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 109
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    .line 110
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mDetached:Z

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 111
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 113
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instantiated fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 116
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mIndex:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mContainerId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mDetached:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 133
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 134
    return-void

    .line 126
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 130
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 131
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method
