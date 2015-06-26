.class public final Lkc;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:F

.field private b:Lcom/kms/KisShieldView$ShieldState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 650
    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    sput-object v0, Lkc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 637
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lkc;->a:F

    .line 639
    invoke-static {}, Lcom/kms/KisShieldView$ShieldState;->values()[Lcom/kms/KisShieldView$ShieldState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lkc;->b:Lcom/kms/KisShieldView$ShieldState;

    .line 640
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lkc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 634
    return-void
.end method

.method public static synthetic a(Lkc;F)F
    .locals 0

    .prologue
    .line 628
    iput p1, p0, Lkc;->a:F

    return p1
.end method

.method public static synthetic a(Lkc;)Lcom/kms/KisShieldView$ShieldState;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lkc;->b:Lcom/kms/KisShieldView$ShieldState;

    return-object v0
.end method

.method public static synthetic a(Lkc;Lcom/kms/KisShieldView$ShieldState;)Lcom/kms/KisShieldView$ShieldState;
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lkc;->b:Lcom/kms/KisShieldView$ShieldState;

    return-object p1
.end method

.method public static synthetic b(Lkc;)F
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lkc;->a:F

    return v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 644
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 645
    iget v0, p0, Lkc;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 646
    iget-object v0, p0, Lkc;->b:Lcom/kms/KisShieldView$ShieldState;

    invoke-virtual {v0}, Lcom/kms/KisShieldView$ShieldState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    return-void
.end method
