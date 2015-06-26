.class public final Lsy;
.super Lss;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:I

.field private static c:J

.field private static final d:[Lsp;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v4, 0x0

    const/4 v3, 0x7

    const/4 v5, 0x1

    .line 24
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 25
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    sput-wide v1, Lsy;->c:J

    .line 26
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sput v1, Lsy;->b:I

    .line 27
    invoke-virtual {v0, v6, v5}, Ljava/util/GregorianCalendar;->add(II)V

    .line 28
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sput v1, Lsy;->b:I

    .line 29
    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 30
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 31
    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    sput-wide v0, Lsy;->a:J

    .line 36
    new-array v0, v3, [Lsp;

    new-instance v1, Lsp;

    const-string v2, "upd_update_roaming"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Lsp;

    const-string v2, "upd_time"

    sget-wide v3, Lsy;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lsp;

    const-string v3, "upd_day"

    sget v4, Lsy;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lsp;

    const-string v3, "upd_freq"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lsp;

    const-string v3, "upd_last_time"

    sget-wide v4, Lsy;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lsp;

    const-string v3, "upd_last_ak_ver_loaded"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lsp;

    const-string v3, "upd_last_ak_ver_canceled"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lsy;->d:[Lsp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lsy;->d:[Lsp;

    invoke-direct {p0, v0}, Lss;-><init>([Lsp;)V

    .line 48
    invoke-virtual {p0}, Lsy;->A()V

    .line 49
    return-void
.end method
