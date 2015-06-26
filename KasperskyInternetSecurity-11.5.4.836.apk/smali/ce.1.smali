.class public final Lce;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 611
    new-instance v0, Lcf;

    invoke-direct {v0}, Lcf;-><init>()V

    sput-object v0, Lce;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 625
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lce;->a:Z

    .line 628
    return-void

    .line 626
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;Z)V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 632
    iput-boolean p2, p0, Lce;->a:Z

    .line 633
    return-void
.end method

.method public static synthetic a(Lce;)Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lce;->a:Z

    return v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 637
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 638
    iget-boolean v0, p0, Lce;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    return-void

    .line 638
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
