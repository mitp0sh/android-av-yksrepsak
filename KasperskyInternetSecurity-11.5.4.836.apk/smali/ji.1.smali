.class public final Lji;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lji;->a:Landroid/net/Uri;

    .line 49
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lji;->b:Landroid/net/Uri;

    .line 65
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lji;->c:[Ljava/lang/String;

    return-void
.end method
