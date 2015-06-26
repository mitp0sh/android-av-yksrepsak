.class public enum Lcom/kms/settings/SettingTabImpl;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lwd;


# static fields
.field public static final enum Additional:Lcom/kms/settings/SettingTabImpl;

.field public static final enum AntiTheft:Lcom/kms/settings/SettingTabImpl;

.field public static final enum AntiVirus:Lcom/kms/settings/SettingTabImpl;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum Protection:Lcom/kms/settings/SettingTabImpl;

.field public static final enum Quarantine:Lcom/kms/settings/SettingTabImpl;

.field public static final enum Reports:Lcom/kms/settings/SettingTabImpl;

.field public static final enum Scan:Lcom/kms/settings/SettingTabImpl;

.field public static final enum Scanner:Lcom/kms/settings/SettingTabImpl;

.field public static final enum Update:Lcom/kms/settings/SettingTabImpl;

.field public static final enum WebPortal:Lcom/kms/settings/SettingTabImpl;

.field public static final enum WebProtection:Lcom/kms/settings/SettingTabImpl;

.field private static final synthetic a:[Lcom/kms/settings/SettingTabImpl;


# instance fields
.field private final mIconResId:I

.field private final mNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0200f1

    const v5, 0x7f07041d

    .line 9
    new-instance v0, Lcom/kms/settings/SettingTabImpl$1;

    const-string v1, "AntiVirus"

    const v2, 0x7f0200f2

    invoke-direct {v0, v1, v7, v5, v2}, Lcom/kms/settings/SettingTabImpl$1;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->AntiVirus:Lcom/kms/settings/SettingTabImpl;

    .line 16
    new-instance v0, Lcom/kms/settings/SettingTabImpl$2;

    const-string v1, "Scanner"

    const v2, 0x7f07047d

    const v3, 0x7f0200f2

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/kms/settings/SettingTabImpl$2;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->Scanner:Lcom/kms/settings/SettingTabImpl;

    .line 29
    new-instance v0, Lcom/kms/settings/SettingTabImpl$3;

    const-string v1, "Protection"

    invoke-direct {v0, v1, v9, v5, v6}, Lcom/kms/settings/SettingTabImpl$3;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->Protection:Lcom/kms/settings/SettingTabImpl;

    .line 36
    new-instance v0, Lcom/kms/settings/SettingTabImpl$4;

    const-string v1, "Scan"

    const/4 v2, 0x3

    const v3, 0x7f07041f

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/kms/settings/SettingTabImpl$4;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->Scan:Lcom/kms/settings/SettingTabImpl;

    .line 43
    new-instance v0, Lcom/kms/settings/SettingTabImpl;

    const-string v1, "Update"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/kms/settings/SettingTabImpl;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->Update:Lcom/kms/settings/SettingTabImpl;

    .line 44
    new-instance v0, Lcom/kms/settings/SettingTabImpl;

    const-string v1, "Quarantine"

    const/4 v2, 0x5

    const v3, 0x7f070421

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/kms/settings/SettingTabImpl;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->Quarantine:Lcom/kms/settings/SettingTabImpl;

    .line 45
    new-instance v0, Lcom/kms/settings/SettingTabImpl;

    const-string v1, "WebPortal"

    const/4 v2, 0x6

    const v3, 0x7f070422

    const v4, 0x7f0200f3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kms/settings/SettingTabImpl;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->WebPortal:Lcom/kms/settings/SettingTabImpl;

    .line 46
    new-instance v0, Lcom/kms/settings/SettingTabImpl;

    const-string v1, "AntiTheft"

    const/4 v2, 0x7

    const v3, 0x7f0200f0

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/kms/settings/SettingTabImpl;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->AntiTheft:Lcom/kms/settings/SettingTabImpl;

    .line 47
    new-instance v0, Lcom/kms/settings/SettingTabImpl$5;

    const-string v1, "WebProtection"

    const/16 v2, 0x8

    const v3, 0x7f0200f4

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/kms/settings/SettingTabImpl$5;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->WebProtection:Lcom/kms/settings/SettingTabImpl;

    .line 53
    new-instance v0, Lcom/kms/settings/SettingTabImpl;

    const-string v1, "Additional"

    const/16 v2, 0x9

    const v3, 0x7f0200ef

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/kms/settings/SettingTabImpl;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->Additional:Lcom/kms/settings/SettingTabImpl;

    .line 54
    new-instance v0, Lcom/kms/settings/SettingTabImpl;

    const-string v1, "Reports"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/kms/settings/SettingTabImpl;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->Reports:Lcom/kms/settings/SettingTabImpl;

    .line 7
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/kms/settings/SettingTabImpl;

    sget-object v1, Lcom/kms/settings/SettingTabImpl;->AntiVirus:Lcom/kms/settings/SettingTabImpl;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kms/settings/SettingTabImpl;->Scanner:Lcom/kms/settings/SettingTabImpl;

    aput-object v1, v0, v8

    sget-object v1, Lcom/kms/settings/SettingTabImpl;->Protection:Lcom/kms/settings/SettingTabImpl;

    aput-object v1, v0, v9

    const/4 v1, 0x3

    sget-object v2, Lcom/kms/settings/SettingTabImpl;->Scan:Lcom/kms/settings/SettingTabImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kms/settings/SettingTabImpl;->Update:Lcom/kms/settings/SettingTabImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kms/settings/SettingTabImpl;->Quarantine:Lcom/kms/settings/SettingTabImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kms/settings/SettingTabImpl;->WebPortal:Lcom/kms/settings/SettingTabImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kms/settings/SettingTabImpl;->AntiTheft:Lcom/kms/settings/SettingTabImpl;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kms/settings/SettingTabImpl;->WebProtection:Lcom/kms/settings/SettingTabImpl;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kms/settings/SettingTabImpl;->Additional:Lcom/kms/settings/SettingTabImpl;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kms/settings/SettingTabImpl;->Reports:Lcom/kms/settings/SettingTabImpl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->a:[Lcom/kms/settings/SettingTabImpl;

    .line 56
    new-instance v0, Lwe;

    invoke-direct {v0}, Lwe;-><init>()V

    sput-object v0, Lcom/kms/settings/SettingTabImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/kms/settings/SettingTabImpl;->mNameResId:I

    .line 78
    iput p4, p0, Lcom/kms/settings/SettingTabImpl;->mIconResId:I

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/kms/settings/SettingTabImpl$1;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kms/settings/SettingTabImpl;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static fromParcel(Landroid/os/Parcel;)Lwd;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/settings/SettingTabImpl;->valueOf(Ljava/lang/String;)Lcom/kms/settings/SettingTabImpl;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/settings/SettingTabImpl;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/kms/settings/SettingTabImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/settings/SettingTabImpl;

    return-object v0
.end method

.method public static values()[Lcom/kms/settings/SettingTabImpl;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/kms/settings/SettingTabImpl;->a:[Lcom/kms/settings/SettingTabImpl;

    invoke-virtual {v0}, [Lcom/kms/settings/SettingTabImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/settings/SettingTabImpl;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getFragmentBuilder()Lwa;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lwi;

    invoke-direct {v0, p0}, Lwi;-><init>(Lwd;)V

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/kms/settings/SettingTabImpl;->mIconResId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/kms/settings/SettingTabImpl;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/kms/settings/SettingTabImpl;->mNameResId:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/kms/settings/SettingTabImpl;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return-void
.end method
