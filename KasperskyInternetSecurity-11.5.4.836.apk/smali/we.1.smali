.class public final Lwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lwd;
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lcom/kms/settings/SettingTabImpl;->fromParcel(Landroid/os/Parcel;)Lwd;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)[Lwd;
    .locals 1

    .prologue
    .line 64
    new-array v0, p0, [Lwd;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Lwe;->a(Landroid/os/Parcel;)Lwd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Lwe;->a(I)[Lwd;

    move-result-object v0

    return-object v0
.end method
