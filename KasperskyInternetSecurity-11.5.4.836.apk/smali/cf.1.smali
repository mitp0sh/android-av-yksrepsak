.class final Lcf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lce;
    .locals 1

    .prologue
    .line 614
    new-instance v0, Lce;

    invoke-direct {v0, p0}, Lce;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lce;
    .locals 1

    .prologue
    .line 618
    new-array v0, p0, [Lce;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 611
    invoke-static {p1}, Lcf;->a(Landroid/os/Parcel;)Lce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 611
    invoke-static {p1}, Lcf;->a(I)[Lce;

    move-result-object v0

    return-object v0
.end method
