.class public Lcom/kms/ipm/gui/ShowIpmMessageActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;

.field private c:Ljava/util/Iterator;

.field private d:Lat;

.field private e:Z

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<html>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "<head>"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<body>"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;

    invoke-direct {v0, p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;-><init>(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V

    iput-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->b:Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;

    .line 323
    return-void
.end method

.method private static a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;)I
    .locals 3

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    sget-object v1, LoX;->a:[I

    invoke-virtual {p0}, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 255
    :goto_0
    return v0

    .line 248
    :pswitch_0
    const v0, 0x7f020063

    .line 249
    goto :goto_0

    .line 251
    :pswitch_1
    const v0, 0x7f020065

    .line 252
    goto :goto_0

    .line 254
    :pswitch_2
    const v0, 0x7f020064

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 128
    sget-object v0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a:[Ljava/lang/String;

    array-length v2, v0

    .line 129
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 130
    sget-object v3, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 132
    if-lez v4, :cond_0

    .line 133
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    .line 136
    :goto_1
    return v0

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static synthetic a(Lcom/kms/ipm/gui/ShowIpmMessageActivity;Lat;)Lat;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    return-object p1
.end method

.method static synthetic a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->b(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    if-nez p0, :cond_0

    .line 187
    const-string v1, "<script type=\'text/javascript\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    if-eqz p0, :cond_1

    const-string v1, "javascript: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    const-string v1, "function reportStatistics(str) { window.prompt(\'reportStatistics\', str); };"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    if-eqz p0, :cond_2

    const-string v1, "javascript: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_2
    const-string v1, "function getTemplateSubstitutionText(str) { var ret = window.prompt(\'getTemplateSubstitutionText\', str); return ret; };"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    if-eqz p0, :cond_3

    const-string v1, "javascript: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_3
    const-string v1, "function openUrl(str) { window.prompt(\'openUrl\', str); };"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    if-eqz p0, :cond_4

    const-string v1, "javascript: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_4
    const-string v1, "function handler() {   this.reportStatistics = reportStatistics;this.getTemplateSubstitutionText = getTemplateSubstitutionText;this.openUrl = openUrl;};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    if-eqz p0, :cond_5

    const-string v1, "javascript: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_5
    const-string v1, "var IpmCommandHandler = new handler();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    if-nez p0, :cond_6

    .line 205
    const-string v1, "</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(J)V
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->y()Lcom/kaspersky/components/ipm/IpmMessageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/kaspersky/components/ipm/IpmMessageManager;->b(J)V

    .line 276
    return-void
.end method

.method public static synthetic a(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/kms/ipm/gui/ShowIpmMessageActivity;J)V
    .locals 0

    .prologue
    .line 34
    invoke-static {p1, p2}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(J)V

    return-void
.end method

.method public static synthetic b(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Lat;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    return-object v0
.end method

.method private static b(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 148
    .line 149
    if-eqz p1, :cond_0

    const-string v0, "file:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 161
    :cond_0
    if-eqz p2, :cond_4

    .line 162
    invoke-static {p2}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(Ljava/lang/String;)I

    move-result v0

    .line 163
    if-gez v0, :cond_2

    .line 164
    if-eqz p3, :cond_1

    .line 165
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 181
    :cond_1
    :goto_0
    return-object p1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    if-eqz p3, :cond_1

    .line 155
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    if-eqz p3, :cond_3

    .line 171
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object p1, v2

    .line 173
    goto :goto_0

    .line 176
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript: window.loadPage = function (url) {window.location.replace(url);};"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "javascript:loadPage(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    if-eqz p3, :cond_1

    .line 179
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->g()V

    return-void
.end method

.method static synthetic d(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 108
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    const v1, 0x7f070444

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 111
    new-instance v1, LoW;

    invoke-direct {v1, p0}, LoW;-><init>(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method

.method static synthetic g(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->b:Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 211
    const v0, 0x7f0b0187

    invoke-virtual {p0, v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 212
    const v2, 0x7f0b005a

    invoke-virtual {p0, v2}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 213
    iget-object v3, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    iget-object v3, v3, Lat;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v3, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    iget-object v3, v3, Lat;->b:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    invoke-static {v3}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;)I

    move-result v3

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 216
    iget-object v2, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    iget-object v2, v2, Lat;->f:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    sget-object v3, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->ContentString:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    if-ne v2, v3, :cond_1

    .line 217
    iget-boolean v2, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->e:Z

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    iget-object v2, v2, Lat;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->b(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    :goto_1
    return-void

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    iget-object v2, v2, Lat;->e:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 230
    new-instance v2, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebViewClient;

    invoke-direct {v2, p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebViewClient;-><init>(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 231
    new-instance v2, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebChromeClient;

    invoke-direct {v2, p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmWebChromeClient;-><init>(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 233
    iget-boolean v2, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->e:Z

    if-eqz v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    iget-object v2, v2, Lat;->e:Ljava/lang/String;

    invoke-static {v0, v2, v1, v5}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->b(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_1

    .line 237
    :cond_2
    new-instance v1, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;

    invoke-direct {v1, p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;-><init>(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V

    const-string v2, "IpmCommandHandler"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    iget-object v1, v1, Lat;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    iget-wide v0, v0, Lat;->a:J

    invoke-static {v0, v1}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(J)V

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lat;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat;

    .line 265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->c()Laq;

    move-result-object v0

    invoke-interface {v0}, Laq;->a()Ljava/util/List;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->finish()V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 68
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->e:Z

    .line 71
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->c:Ljava/util/Iterator;

    .line 72
    invoke-virtual {p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->c()Lat;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    .line 73
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->d:Lat;

    if-nez v0, :cond_5

    .line 74
    invoke-virtual {p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->finish()V

    goto :goto_0

    .line 78
    :cond_5
    const v0, 0x7f03008e

    invoke-virtual {p0, v0, v3}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(II)V

    .line 80
    const v0, 0x7f0b0184

    invoke-virtual {p0, v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->f:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f0b0186

    invoke-virtual {p0, v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->g:Landroid/widget/TextView;

    .line 83
    invoke-direct {p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->g()V

    .line 85
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    const v1, 0x7f070445

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 88
    new-instance v1, LoV;

    invoke-direct {v1, p0}, LoV;-><init>(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->f()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->h()V

    .line 144
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
