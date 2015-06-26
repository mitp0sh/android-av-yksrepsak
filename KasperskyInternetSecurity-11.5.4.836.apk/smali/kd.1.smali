.class final Lkd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lkc;
    .locals 2

    .prologue
    .line 652
    new-instance v0, Lkc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkc;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Lkc;
    .locals 1

    .prologue
    .line 656
    new-array v0, p0, [Lkc;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 650
    invoke-static {p1}, Lkd;->a(Landroid/os/Parcel;)Lkc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 650
    invoke-static {p1}, Lkd;->a(I)[Lkc;

    move-result-object v0

    return-object v0
.end method
